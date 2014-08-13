.class public abstract Lcom/android/contacts/list/ContactEntryListAdapter;
.super Lcom/android/contacts/widget/IndexerListAdapter;
.source "ContactEntryListAdapter.java"


# static fields
.field private static final LOCAL_INVISIBLE_DIRECTORY_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "ContactEntryListAdapter"


# instance fields
.field private mChagingSplitRatioMode:Z

.field private mCheckBoxDir:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

.field protected mCheckedIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsCount:Ljava/lang/String;

.field private mCounts:[I

.field private mDarkTheme:Z

.field private mDataRestrictedByCallingPackage:Z

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mDisplayPhotos:Z

.field private mEmptyListEnabled:Z

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mHandleCnt:[I

.field private mHughFontEnabled:Z

.field private mIncludeProfile:Z

.field protected mIsMultiSelectionMode:Z

.field private mIsTwoPaneMode:Z

.field private mIsVoLTEEnabled:Z

.field private mLoading:Z

.field private mMultiSelectEnabled:Z

.field private mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

.field private mProfileExists:Z

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSections:[Ljava/lang/String;

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mUpperCaseQueryString:[C


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/IndexerListAdapter;-><init>(Landroid/content/Context;)V

    .line 76
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mChagingSplitRatioMode:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIsTwoPaneMode:Z

    .line 97
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 99
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mLoading:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    .line 112
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    .line 119
    const/16 v0, 0x2e

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mHandleCnt:[I

    .line 956
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIsVoLTEEnabled:Z

    .line 985
    sget-object v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckBoxDir:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    .line 124
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->addPartitions()V

    .line 125
    return-void
.end method

.method private getPartitionByDirectoryId(J)I
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 191
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 192
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 193
    .local v2, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v3, :cond_0

    .line 194
    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    .end local v2    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 199
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 191
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 555
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    .line 569
    :goto_0
    return-void

    .line 560
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 561
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 562
    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSections:[Ljava/lang/String;

    .line 564
    .local v2, "sections":[Ljava/lang/String;
    const-string v3, "address_book_index_counts"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCounts:[I

    .line 565
    .local v1, "counts":[I
    new-instance v3, Lcom/android/contacts/list/ContactsSectionIndexer;

    invoke-direct {v3, v2, v1}, Lcom/android/contacts/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0

    .line 567
    .end local v1    # "counts":[I
    .end local v2    # "sections":[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0
.end method


# virtual methods
.method protected addPartitions()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    .line 155
    return-void
.end method

.method protected applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 3
    .param p1, "builder"    # Landroid/net/Uri$Builder;

    .prologue
    .line 937
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDataRestrictedByCallingPackage:Z

    if-nez v1, :cond_1

    .line 953
    .end local p1    # "builder":Landroid/net/Uri$Builder;
    :cond_0
    :goto_0
    return-object p1

    .line 945
    .restart local p1    # "builder":Landroid/net/Uri$Builder;
    :cond_1
    const-string v1, "include_invisible_contacts"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 948
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, "callingPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 950
    const-string v1, "requesting_package"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    goto :goto_0
.end method

.method protected applyDataRestriction(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDataRestrictedByCallingPackage:Z

    if-nez v0, :cond_0

    .line 930
    .end local p1    # "uri":Landroid/net/Uri;
    :goto_0
    return-object p1

    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0
.end method

.method public areAllPartitionsEmpty()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 623
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 624
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 626
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->isPartitionEmpty(I)Z
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 635
    :goto_1
    return v3

    .line 629
    :catch_0
    move-exception v1

    .line 630
    .local v1, "e":Landroid/database/StaleDataException;
    invoke-virtual {v1}, Landroid/database/StaleDataException;->printStackTrace()V

    .line 631
    const-string v4, "ContactEntryListAdapter"

    const-string v5, "cursor is closed"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 624
    .end local v1    # "e":Landroid/database/StaleDataException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 635
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 667
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v11

    .line 668
    .local v11, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v12, v11, Lcom/android/contacts/list/DirectoryPartition;

    if-nez v12, :cond_0

    .line 735
    :goto_0
    return-void

    .line 672
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    instance-of v12, v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    if-eqz v12, :cond_2

    .line 673
    const v12, 0x7f02060a

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    move-object v7, v11

    .line 697
    check-cast v7, Lcom/android/contacts/list/DirectoryPartition;

    .line 698
    .local v7, "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    .line 699
    .local v4, "directoryId":J
    const v12, 0x7f09010e

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 700
    .local v10, "labelTextView":Landroid/widget/TextView;
    const v12, 0x7f0902ce

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 701
    .local v9, "displayNameTextView":Landroid/widget/TextView;
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_1

    const-wide/16 v12, 0x1

    cmp-long v12, v4, v12

    if-nez v12, :cond_6

    .line 702
    :cond_1
    const v12, 0x7f0e01b4

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    .line 703
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 704
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 716
    :goto_2
    const v12, 0x7f0902cd

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 717
    .local v3, "countText":Landroid/widget/TextView;
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 718
    const v12, 0x7f0e01a0

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 676
    .end local v3    # "countText":Landroid/widget/TextView;
    .end local v4    # "directoryId":J
    .end local v7    # "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    .end local v9    # "displayNameTextView":Landroid/widget/TextView;
    .end local v10    # "labelTextView":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/contacts/list/ContactEntryListAdapter;->mChagingSplitRatioMode:Z

    if-eqz v12, :cond_3

    .line 677
    const v12, 0x7f02071d

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 679
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonblet(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 681
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSelectionVisible:Z

    if-eqz v12, :cond_4

    .line 683
    const v12, 0x7f02071c

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 687
    :cond_4
    const v12, 0x7f02071e

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 692
    :cond_5
    const v12, 0x7f02071c

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 707
    .restart local v4    # "directoryId":J
    .restart local v7    # "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    .restart local v9    # "displayNameTextView":Landroid/widget/TextView;
    .restart local v10    # "labelTextView":Landroid/widget/TextView;
    :cond_6
    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 709
    .local v6, "directoryName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    move-object v8, v6

    .line 712
    .local v8, "displayName":Ljava/lang/String;
    :goto_3
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 709
    .end local v8    # "displayName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 720
    .end local v6    # "directoryName":Ljava/lang/String;
    .restart local v3    # "countText":Landroid/widget/TextView;
    :cond_8
    const/4 v2, 0x0

    .line 721
    .local v2, "count":I
    if-eqz p3, :cond_9

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 722
    :cond_9
    const/4 v2, 0x0

    .line 726
    :goto_4
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_b

    const-wide/16 v12, 0x1

    cmp-long v12, v4, v12

    if-eqz v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryResultLimit()I

    move-result v12

    if-lt v2, v12, :cond_b

    .line 728
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0e008b

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryResultLimit()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 724
    :cond_a
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_4

    .line 731
    :cond_b
    const v12, 0x7f0e008c

    const v13, 0x7f100003

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQuantityText(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;III)V
    .locals 7
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "photoIdColumn"    # I
    .param p5, "contactIdColumn"    # I
    .param p6, "lookUpKeyColumn"    # I

    .prologue
    .line 806
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v4, "CscFeature_Contact_DisableContactPhoto"

    invoke-virtual {v0, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    .line 823
    :goto_0
    return-void

    .line 812
    :cond_1
    const-wide/16 v2, 0x0

    .line 813
    .local v2, "photoId":J
    invoke-interface {p3, p4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 814
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 817
    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v1

    .line 818
    .local v1, "quickContact":Landroid/widget/QuickContactBadge;
    invoke-virtual {p0, p2, p3, p5, p6}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 821
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 822
    .local v5, "contactId":J
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZJ)V

    goto :goto_0
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 528
    .local v0, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v1, :cond_2

    .line 529
    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    .end local v0    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 532
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isPhotoSupported(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 533
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManager;->refreshCache()V

    .line 537
    :cond_3
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/widget/IndexerListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 539
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 540
    invoke-direct {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->updateIndexer(Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 542
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 549
    return-void
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 16
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 470
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-nez v13, :cond_2

    .line 473
    :cond_0
    const-string v13, "ContactEntryListAdapter"

    const-string v14, "Directory search loader returned an empty cursor, which implies we have no directory entries."

    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v13, v14, v15}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    :cond_1
    return-void

    .line 477
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 479
    .local v3, "directoryIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string v13, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 480
    .local v9, "idColumnIndex":I
    const-string v13, "directoryType"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 481
    .local v4, "directoryTypeColumnIndex":I
    const-string v13, "displayName"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 482
    .local v5, "displayNameColumnIndex":I
    const-string v13, "photoSupport"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 483
    .local v12, "photoSupportColumnIndex":I
    const-string v13, "accountType"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 487
    .local v2, "directoryAccountType":I
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 488
    :cond_3
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 489
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 490
    .local v7, "id":J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 491
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionByDirectoryId(J)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    .line 492
    new-instance v10, Lcom/android/contacts/list/DirectoryPartition;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct {v10, v13, v14}, Lcom/android/contacts/list/DirectoryPartition;-><init>(ZZ)V

    .line 493
    .local v10, "partition":Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v10, v7, v8}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryId(J)V

    .line 494
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryAccountType(Ljava/lang/String;)V

    .line 496
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/contacts/list/DirectoryPartition;->setDisplayName(Ljava/lang/String;)V

    .line 497
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 498
    .local v11, "photoSupport":I
    const/4 v13, 0x1

    if-eq v11, v13, :cond_4

    const/4 v13, 0x3

    if-ne v11, v13, :cond_5

    :cond_4
    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v10, v13}, Lcom/android/contacts/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 500
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_0

    .line 498
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .line 505
    .end local v7    # "id":J
    .end local v10    # "partition":Lcom/android/contacts/list/DirectoryPartition;
    .end local v11    # "photoSupport":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v1

    .line 506
    .local v1, "count":I
    move v6, v1

    .local v6, "i":I
    :cond_7
    :goto_2
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_1

    .line 507
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v10

    .line 508
    .local v10, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v13, v10, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v13, :cond_7

    .line 509
    check-cast v10, Lcom/android/contacts/list/DirectoryPartition;

    .end local v10    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v10}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v7

    .line 510
    .restart local v7    # "id":J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 511
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->removePartition(I)V

    goto :goto_2
.end method

.method public clearCheckedids()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 378
    return-void
.end method

.method public clearParitionsForDeleteMode()V
    .locals 5

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 260
    .local v0, "count":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 261
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 262
    .local v3, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 263
    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    .line 264
    .local v1, "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 265
    const/4 v4, 0x0

    invoke-super {p0, v2, v4}, Lcom/android/contacts/widget/IndexerListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 260
    .end local v1    # "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_1
    return-void
.end method

.method public clearPartitions()V
    .locals 5

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 247
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 248
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 249
    .local v3, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 250
    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    .line 251
    .local v1, "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 247
    .end local v1    # "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    .end local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->clearPartitions()V

    .line 255
    return-void
.end method

.method protected clearPinnedHeaderContactsCount(Landroid/view/View;)V
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 150
    check-cast p1, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    .end local p1    # "header":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->setCountView(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 8
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 642
    const/4 v1, -0x1

    .line 643
    .local v1, "defaultPartitionIndex":I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 644
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 645
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 646
    .local v3, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    .end local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 648
    move v1, v2

    .line 652
    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 653
    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setShowIfEmpty(IZ)V

    .line 654
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    .line 656
    :cond_1
    return-void

    .line 644
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public configureDirectoryLoader(Lcom/android/contacts/list/DirectoryListLoader;)V
    .locals 1
    .param p1, "loader"    # Lcom/android/contacts/list/DirectoryListLoader;

    .prologue
    .line 460
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/DirectoryListLoader;->setDirectorySearchMode(I)V

    .line 461
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/DirectoryListLoader;->setLocalInvisibleDirectoryEnabled(Z)V

    .line 462
    return-void
.end method

.method public abstract configureLoader(Landroid/content/CursorLoader;J)V
.end method

.method protected createDefaultDirectoryPartition()Lcom/android/contacts/list/DirectoryPartition;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 158
    new-instance v0, Lcom/android/contacts/list/DirectoryPartition;

    invoke-direct {v0, v3, v3}, Lcom/android/contacts/list/DirectoryPartition;-><init>(ZZ)V

    .line 159
    .local v0, "partition":Lcom/android/contacts/list/DirectoryPartition;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryId(J)V

    .line 160
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 161
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryAccountType(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DirectoryPartition;->setPriorityDirectory(Z)V

    .line 163
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 164
    return-object v0
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 129
    new-instance v0, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/list/ContactListPinnedHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckBoxDirection()Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckBoxDir:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    return-object v0
.end method

.method public abstract getContactDisplayName(I)Ljava/lang/String;
.end method

.method public getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayOrder:I

    return v0
.end method

.method protected getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 9
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "contactIdColumn"    # I
    .param p4, "lookUpKeyColumn"    # I

    .prologue
    .line 827
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 828
    .local v0, "contactId":J
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 829
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 830
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 831
    .local v2, "directoryId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 832
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 835
    :cond_0
    return-object v5
.end method

.method public getContactsCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryResultLimit()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    return v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    return v0
.end method

.method public getDisplayPhotos()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    return v0
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public getHandleCounts()[I
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mHandleCnt:[I

    return-object v0
.end method

.method public getHeaderTitles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method protected getHugeFontEnabled()Z
    .locals 1

    .prologue
    .line 910
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mHughFontEnabled:Z

    return v0
.end method

.method public getIndexCounts()[I
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCounts:[I

    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 3
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    .line 580
    invoke-super {p0, p1, p2}, Lcom/android/contacts/widget/IndexerListAdapter;->getItemViewType(II)I

    move-result v1

    .line 581
    .local v1, "type":I
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->isUserProfile(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 584
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    move-result-object v0

    .line 585
    .local v0, "placement":Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    iget-boolean v2, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v2, :cond_1

    .line 587
    .end local v0    # "placement":Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    .end local v1    # "type":I
    :cond_0
    :goto_0
    return v1

    .line 585
    .restart local v0    # "placement":Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    .restart local v1    # "type":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    return-object v0
.end method

.method public getQuantityText(III)Ljava/lang/String;
    .locals 4
    .param p1, "count"    # I
    .param p2, "zeroResourceId"    # I
    .param p3, "pluralResourceId"    # I

    .prologue
    .line 772
    if-nez p1, :cond_0

    .line 773
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 777
    :goto_0
    return-object v1

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "format":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSortOrder:I

    return v0
.end method

.method public getTwoPaneMode()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIsTwoPaneMode:Z

    return v0
.end method

.method public getUpperCaseQueryString()[C
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasProfile()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mProfileExists:Z

    return v0
.end method

.method protected isChangingSplitRatioMode()Z
    .locals 1

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mChagingSplitRatioMode:Z

    return v0
.end method

.method public isChecked(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 389
    .local v0, "contactId":J
    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isChecked(J)Z

    move-result v2

    return v2
.end method

.method public isChecked(J)Z
    .locals 2
    .param p1, "contactId"    # J

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const/4 v0, 0x1

    .line 398
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataRestrictedByCallingPackage()Z
    .locals 1

    .prologue
    .line 914
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDataRestrictedByCallingPackage:Z

    return v0
.end method

.method protected isEasAccountPartition(I)Z
    .locals 4
    .param p1, "partitionIndex"    # I

    .prologue
    .line 868
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    .line 869
    .local v1, "partition":Lcom/android/contacts/list/DirectoryPartition;
    const/4 v0, 0x0

    .line 871
    .local v0, "isEasAccountPartition":Z
    const-string v2, "com.android.exchange"

    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LDAP"

    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 873
    :cond_0
    const/4 v0, 0x1

    .line 874
    :cond_1
    return v0
.end method

.method protected isEasAccountPartition(J)Z
    .locals 5
    .param p1, "directoryId"    # J

    .prologue
    .line 879
    const/4 v0, 0x0

    .line 880
    .local v0, "isEasAccountPartition":Z
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionByDirectoryId(J)I

    move-result v2

    .line 881
    .local v2, "partitionId":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 882
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    .line 885
    .local v1, "partition":Lcom/android/contacts/list/DirectoryPartition;
    const-string v3, "com.android.exchange"

    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LDAP"

    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 887
    :cond_0
    const/4 v0, 0x1

    .line 889
    .end local v1    # "partition":Lcom/android/contacts/list/DirectoryPartition;
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 598
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    if-nez v1, :cond_1

    .line 606
    :cond_0
    :goto_0
    return v0

    .line 600
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 601
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 602
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mLoading:Z

    if-nez v1, :cond_0

    .line 606
    invoke-super {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isEmptyListEnabled()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    return v0
.end method

.method public isGalSearchShowMore(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 848
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v2

    .line 852
    .local v2, "partitionPosition":I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactDisplayName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 858
    .local v0, "displayName":Ljava/lang/String;
    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-string v4, "gal_search_show_more"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 860
    const/4 v3, 0x1

    .line 863
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 853
    :catch_0
    move-exception v1

    .line 854
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v4, "ContactEntryListAdapter"

    const-string v5, "getContactDisplayName() failed due to NullPointerException, so return false."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 4

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 612
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 613
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 614
    .local v2, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    .end local v2    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 616
    const/4 v3, 0x1

    .line 619
    :goto_1
    return v3

    .line 612
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isMultiSelectEnabled()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mMultiSelectEnabled:Z

    return v0
.end method

.method public isPhotoSupported(I)Z
    .locals 2
    .param p1, "partitionIndex"    # I

    .prologue
    .line 782
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 783
    .local v0, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v1, :cond_0

    .line 784
    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    .end local v0    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->isPhotoSupported()Z

    move-result v1

    .line 786
    :goto_0
    return v1

    .restart local v0    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isQuickContactEnabled()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSearchMode:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return v0
.end method

.method protected isUserProfile(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x1

    .line 743
    const/4 v2, 0x0

    .line 744
    .local v2, "isUserProfile":Z
    if-nez p1, :cond_1

    .line 745
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v4

    .line 746
    .local v4, "partition":I
    if-ltz v4, :cond_1

    .line 749
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 751
    .local v3, "offset":I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 752
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 753
    const-string v7, "is_user_profile"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 754
    .local v5, "profileColumnIndex":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 755
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v6, :cond_2

    move v2, v6

    .line 758
    :cond_0
    :goto_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 767
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "offset":I
    .end local v4    # "partition":I
    .end local v5    # "profileColumnIndex":I
    :cond_1
    :goto_1
    return v2

    .line 755
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "offset":I
    .restart local v4    # "partition":I
    .restart local v5    # "profileColumnIndex":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 760
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v5    # "profileColumnIndex":I
    :catch_0
    move-exception v1

    .line 761
    .local v1, "e":Landroid/database/StaleDataException;
    invoke-virtual {v1}, Landroid/database/StaleDataException;->printStackTrace()V

    goto :goto_1

    .line 762
    .end local v1    # "e":Landroid/database/StaleDataException;
    :catch_1
    move-exception v1

    .line 763
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public isVoLTEEnabled()Z
    .locals 1

    .prologue
    .line 958
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIsVoLTEEnabled:Z

    return v0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 661
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 662
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040122

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDataReload()V
    .locals 9

    .prologue
    .line 209
    const/4 v4, 0x0

    .line 211
    .local v4, "notify":Z
    const/4 v3, 0x0

    .line 212
    .local v3, "isCursorClosed":Z
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 213
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 214
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v5

    .line 215
    .local v5, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v6, v5, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v6, :cond_2

    move-object v1, v5

    .line 216
    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    .line 217
    .local v1, "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    const-string v6, "ContactEntryListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] cursor isClosed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v3, 0x1

    .line 221
    :cond_0
    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v6

    if-nez v6, :cond_1

    .line 222
    const/4 v4, 0x1

    .line 224
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 213
    .end local v1    # "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v5    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_3
    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    .line 228
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 230
    :cond_4
    return-void
.end method

.method public onDataReloadDirectoryPartition(I)V
    .locals 3
    .param p1, "partitionIndex"    # I

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    .line 235
    .local v1, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v2, v1, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 236
    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    .line 237
    .local v0, "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 240
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 242
    .end local v0    # "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    :cond_1
    return-void
.end method

.method removeDirectoriesAfterDefault()V
    .locals 7

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v2

    .line 178
    .local v2, "partitionCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    .line 180
    .local v1, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v1, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    .end local v1    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 187
    :cond_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->removePartition(I)V

    .line 178
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected setChangingSplitRatioMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 894
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mChagingSplitRatioMode:Z

    .line 895
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 896
    return-void
.end method

.method public setCheck(JZ)V
    .locals 3
    .param p1, "contactId"    # J
    .param p3, "checked"    # Z

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    return-void
.end method

.method public setCheckBoxDirection(Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;)V
    .locals 0
    .param p1, "aDirection"    # Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    .prologue
    .line 988
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckBoxDir:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    .line 989
    return-void
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 0
    .param p1, "displayOrder"    # I

    .prologue
    .line 324
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayOrder:I

    .line 325
    return-void
.end method

.method public setContactsCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/String;

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    .line 840
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    .line 457
    return-void
.end method

.method public setDataRestrictedByCallingPackage(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 918
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDataRestrictedByCallingPackage:Z

    .line 919
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 316
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 317
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 308
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    .line 309
    return-void
.end method

.method public setDisplayPhotos(Z)V
    .locals 0
    .param p1, "displayPhotos"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    .line 349
    return-void
.end method

.method public setEmptyListEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    .line 357
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 798
    return-void
.end method

.method public setHandleCounts([I)V
    .locals 3
    .param p1, "handleCnt"    # [I

    .prologue
    .line 975
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mHandleCnt:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 975
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    :cond_0
    return-void
.end method

.method protected setHugeFontEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 905
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mHughFontEnabled:Z

    .line 906
    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 0
    .param p1, "includeProfile"    # Z

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIncludeProfile:Z

    .line 437
    return-void
.end method

.method public setMultiSelectEnabled(Z)V
    .locals 1
    .param p1, "multiSelctEnabled"    # Z

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mMultiSelectEnabled:Z

    if-eq v0, p1, :cond_0

    .line 410
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mMultiSelectEnabled:Z

    .line 412
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 414
    :cond_0
    return-void
.end method

.method public setMultiSelectionMode(Z)V
    .locals 0
    .param p1, "isMultiSelectionMode"    # Z

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIsMultiSelectionMode:Z

    .line 418
    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoLoader"    # Lcom/android/contacts/ContactPhotoManager;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    .line 337
    return-void
.end method

.method protected setPinnedHeaderContactsCount(Landroid/view/View;)V
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mProfileExists:Z

    if-eqz v0, :cond_0

    .line 142
    check-cast p1, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    .end local p1    # "header":Landroid/view/View;
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->setCountView(Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 144
    .restart local p1    # "header":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPinnedHeaderContactsCount(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "pinnedHeaderView"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 134
    check-cast p1, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    .end local p1    # "pinnedHeaderView":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->setSectionHeader(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public setProfileExists(Z)V
    .locals 3
    .param p1, "exists"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mProfileExists:Z

    .line 442
    if-eqz p1, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    .line 444
    .local v0, "indexer":Landroid/widget/SectionIndexer;
    if-eqz v0, :cond_0

    .line 445
    check-cast v0, Lcom/android/contacts/list/ContactsSectionIndexer;

    .end local v0    # "indexer":Landroid/widget/SectionIndexer;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0205

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsSectionIndexer;->setProfileHeader(Ljava/lang/String;)V

    .line 449
    :cond_0
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 3
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    .line 284
    if-eqz p1, :cond_0

    .line 285
    const-string v1, "[  ]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 286
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 287
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 292
    .end local v0    # "p":Ljava/util/regex/Pattern;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "quickContactEnabled"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    .line 373
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSearchMode:Z

    .line 276
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSelectionVisible:Z

    .line 365
    return-void
.end method

.method public setSortOrder(I)V
    .locals 0
    .param p1, "sortOrder"    # I

    .prologue
    .line 332
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSortOrder:I

    .line 333
    return-void
.end method

.method public setTwoPaneModeEnabled(Z)V
    .locals 1
    .param p1, "isTwoPaneMode"    # Z

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIsTwoPaneMode:Z

    if-eq v0, p1, :cond_0

    .line 423
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIsTwoPaneMode:Z

    .line 425
    :cond_0
    return-void
.end method

.method public setVoLTEEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 962
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIsVoLTEEnabled:Z

    .line 963
    return-void
.end method

.method public shouldIncludeProfile()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIncludeProfile:Z

    return v0
.end method
