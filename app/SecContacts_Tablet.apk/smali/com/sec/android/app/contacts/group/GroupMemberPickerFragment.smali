.class public Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "GroupMemberPickerFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/list/OnActionBarClickListener;
.implements Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;,
        Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/sec/android/app/contacts/list/OnActionBarClickListener;",
        "Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;"
    }
.end annotation


# static fields
.field private static final SOFT_INPUT_MODE_DEFAULT:I = 0x10

.field private static final TAG:Ljava/lang/String; = "GroupMemberPickerFragment"


# instance fields
.field private mContactsUnavailableView:Landroid/view/View;

.field private mCursor:Landroid/database/Cursor;

.field private mEmptyView:Landroid/view/View;

.field private mExceptedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mHeaderView:Landroid/view/View;

.field private mICEGroupCount:I

.field private mIsAutoAdd:Z

.field private mListContainer:Landroid/view/View;

.field private mListContentFrame:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

.field private mMode:I

.field private mModifiedMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectAllEnabled:Z

.field private mSelectAllVisible:Z

.field private mShortcutRequested:Z

.field private mSoftInputMode:I

.field private mStatus:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 90
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->NOTLOADED:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    .line 96
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    .line 97
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSoftInputMode:I

    .line 104
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 105
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 107
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 108
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 110
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setQuickContactEnabled(Z)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSelectAllVisible(Z)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setDirectorySearchMode(I)V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    .prologue
    .line 63
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;I)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;)Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mICEGroupCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private addAllMember()V
    .locals 7

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;

    .line 456
    .local v0, "adapter":Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getCount()I

    move-result v1

    .line 457
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 458
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 461
    .local v3, "targetId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    .line 457
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 465
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 468
    .end local v3    # "targetId":J
    :cond_2
    return-void
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .param p1, "isEmpty"    # Z

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    if-eqz p1, :cond_3

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 477
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iput v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSoftInputMode:I

    .line 481
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSoftInputMode()V

    .line 482
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setNoMatchesText()V

    goto :goto_0

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 486
    const/16 v0, 0x30

    iput v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSoftInputMode:I

    .line 487
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSoftInputMode()V

    .line 488
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setNoContactText()V

    goto :goto_0

    .line 491
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iput v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSoftInputMode:I

    .line 495
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setSoftInputMode()V

    goto :goto_0
.end method

.method private configureListBackgound()V
    .locals 1

    .prologue
    .line 228
    sget-boolean v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/AutoScrollListView;

    .line 232
    :cond_0
    return-void
.end method

.method private configureSearchView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 656
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mContext:Landroid/content/Context;

    .line 658
    :cond_0
    sget-boolean v5, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->sIsTwoPaneMode:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v5, :cond_2

    .line 659
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c011e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 661
    .local v0, "defaultSearchViewTopBottomPadding":I
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c011f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 664
    .local v3, "searchViewTopBottomPadding":I
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0199

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 666
    .local v1, "leftPadding":I
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c019a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 668
    .local v2, "rightPadding":I
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0122

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 671
    .local v4, "topPadding":I
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 672
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v1, v7, v7, v7}, Landroid/widget/SearchView;->setPadding(IIII)V

    .line 677
    .end local v0    # "defaultSearchViewTopBottomPadding":I
    .end local v1    # "leftPadding":I
    .end local v2    # "rightPadding":I
    .end local v3    # "searchViewTopBottomPadding":I
    .end local v4    # "topPadding":I
    :cond_2
    :goto_0
    return-void

    .line 674
    .restart local v0    # "defaultSearchViewTopBottomPadding":I
    .restart local v1    # "leftPadding":I
    .restart local v2    # "rightPadding":I
    .restart local v3    # "searchViewTopBottomPadding":I
    .restart local v4    # "topPadding":I
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v1, v4, v2, v7}, Landroid/widget/SearchView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private configureSelectAll()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 210
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f09011d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "headerLayout":Landroid/view/View;
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 216
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mIsAutoAdd:Z

    if-nez v2, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllEnabled:Z

    .line 222
    :goto_1
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 224
    .end local v0    # "headerLayout":Landroid/view/View;
    :cond_1
    return-void

    .line 216
    .restart local v0    # "headerLayout":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 219
    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllEnabled:Z

    goto :goto_1
.end method

.method private configureUri(I)Landroid/net/Uri;
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 628
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "title":Ljava/lang/String;
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 641
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    return-object v1

    .line 632
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 635
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_2

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 637
    .restart local v1    # "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "emergency"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 639
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private removeAllMember()V
    .locals 7

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->isSearchMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 416
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;

    .line 418
    .local v0, "adapter":Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getCount()I

    move-result v1

    .line 419
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 420
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 424
    .local v3, "targetId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    .line 419
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 428
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 434
    .end local v0    # "adapter":Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "targetId":J
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 436
    :cond_3
    return-void
.end method

.method private setNoContactText()V
    .locals 4

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090180

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 509
    .local v0, "imageView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 510
    .local v1, "textView":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 511
    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 512
    return-void
.end method

.method private setNoMatchesText()V
    .locals 4

    .prologue
    .line 500
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v3, 0x7f090437

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 501
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v3, 0x7f09017e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 502
    .local v0, "progress":Landroid/widget/ProgressBar;
    const v2, 0x7f0e02de

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 503
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 504
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 505
    return-void
.end method

.method private showErrorToast(I)V
    .locals 5
    .param p1, "message"    # I

    .prologue
    const/4 v4, 0x0

    .line 574
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "warningText":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mToast:Landroid/widget/Toast;

    .line 581
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 582
    return-void

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDoneButton()V
    .locals 3

    .prologue
    .line 564
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onDoneButtonStateUpdated(Z)V

    .line 570
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onTitleUpdated(II)V

    .line 571
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_0
.end method

.method private updateHeaderViewAndDoneButton()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 515
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v5

    .line 516
    .local v5, "total":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    const v9, 0x7f09011e

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 522
    .local v0, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->isSearchMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 524
    const/4 v3, 0x1

    .line 526
    .local v3, "isAllContain":Z
    const/4 v4, 0x0

    .local v4, "position":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 527
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v6, v4}, Lcom/android/contacts/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 530
    .local v1, "id":J
    const-wide/16 v9, 0x0

    cmp-long v6, v1, v9

    if-nez v6, :cond_1

    .line 526
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 533
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 534
    const/4 v3, 0x0

    .line 539
    .end local v1    # "id":J
    :cond_2
    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 552
    .end local v3    # "isAllContain":Z
    .end local v4    # "position":I
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6

    .line 553
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    invoke-interface {v6, v8}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onDoneButtonStateUpdated(Z)V

    .line 558
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    iget-object v7, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6, v7, v5}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onTitleUpdated(II)V

    .line 559
    return-void

    .line 542
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_4

    .line 544
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 545
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->addAllMember()V

    .line 548
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_3

    .line 555
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    invoke-interface {v6, v7}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 340
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 341
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 343
    .local v0, "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 344
    return-void
.end method

.method protected configureSearchbar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0e01c2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 248
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 282
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureSearchView()V

    .line 288
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;-><init>(Landroid/content/Context;)V

    .line 320
    .local v0, "adapter":Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 321
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setDisplayPhotos(Z)V

    .line 322
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setQuickContactEnabled(Z)V

    .line 323
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 324
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setModifiedMemeberIds(Ljava/util/List;)V

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setExceptedAccounts(Ljava/util/List;)V

    .line 326
    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setMode(I)V

    .line 328
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mIsAutoAdd:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setAutoAdd(Z)V

    .line 335
    .end local v0    # "adapter":Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    :goto_0
    return-object v0

    .line 332
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 333
    .local v0, "adapter":Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 334
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public getGroupInfo()Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    return v0
.end method

.method public getModifiedMemberIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f090314

    const v4, 0x7f0901cd

    const/16 v3, 0x8

    .line 348
    const v1, 0x7f040070

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 350
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 353
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 354
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 356
    :cond_1
    return-object v0
.end method

.method public isSelectAllVisible()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    .line 167
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mIsAutoAdd:Z

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    .line 169
    :cond_1
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->runQuery()V

    .line 172
    :cond_2
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    .line 191
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mEmptyView:Landroid/view/View;

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mContactsUnavailableView:Landroid/view/View;

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContentFrame:Landroid/view/View;

    .line 196
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    if-eqz v0, :cond_0

    .line 197
    const v0, 0x7f0401de

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mHeaderView:Landroid/view/View;

    .line 199
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureSelectAll()V

    .line 201
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureListBackgound()V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureSearchbar()V

    .line 206
    return-void
.end method

.method public onDeSelectAllClicked()V
    .locals 1

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->removeAllMember()V

    .line 689
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 690
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateHeaderViewAndDoneButton()V

    .line 691
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDetach()V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mQueryHandler:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->cancelOperation(I)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;

    .line 184
    :cond_1
    return-void
.end method

.method public onDoneClicked()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onSelectedAction(Ljava/util/List;)V

    .line 403
    :cond_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;

    .line 301
    .local v0, "adapter":Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 303
    .local v1, "targetId":J
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 309
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->notifyDataSetChanged()V

    .line 310
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    if-eqz v3, :cond_2

    .line 311
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateHeaderViewAndDoneButton()V

    .line 315
    :goto_1
    return-void

    .line 306
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 307
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateDoneButton()V

    goto :goto_1
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 293
    .local p1, "parent":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 295
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
    .line 362
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_0

    .line 372
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureEmptyView(Z)V

    .line 366
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 367
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    if-eqz v0, :cond_2

    .line 368
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateHeaderViewAndDoneButton()V

    goto :goto_0

    .line 365
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 370
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateDoneButton()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onRevertAction()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;->onRevertAction()V

    .line 410
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 440
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 441
    return-void
.end method

.method public onSelectAllClicked()V
    .locals 1

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->addAllMember()V

    .line 682
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 683
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->updateHeaderViewAndDoneButton()V

    .line 684
    return-void
.end method

.method protected prepareEmptyView()V
    .locals 2

    .prologue
    const v1, 0x7f0e00a4

    .line 376
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->isSyncActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mShortcutRequested:Z

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setEmptyText(I)V

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    const v0, 0x7f0e00a7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setEmptyText(I)V

    goto :goto_0

    .line 385
    :cond_2
    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setEmptyText(I)V

    goto :goto_0

    .line 388
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mShortcutRequested:Z

    if-eqz v0, :cond_4

    .line 390
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setEmptyText(I)V

    goto :goto_0

    .line 391
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 392
    const v0, 0x7f0e00a6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setEmptyText(I)V

    goto :goto_0

    .line 394
    :cond_5
    const v0, 0x7f0e00a8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setEmptyText(I)V

    goto :goto_0
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 445
    const-string v0, "GroupMemberPickerFragment"

    const-string v1, " === restoreSavedState === "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 447
    if-nez p1, :cond_0

    .line 451
    :cond_0
    return-void
.end method

.method public setAutoAdd(Z)V
    .locals 0
    .param p1, "isAutoAdd"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mIsAutoAdd:Z

    .line 144
    return-void
.end method

.method public setExceptedAccounts(Ljava/util/List;)V
    .locals 0
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
    .line 158
    .local p1, "exceptedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-eqz p1, :cond_0

    .line 159
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mExceptedAccounts:Ljava/util/List;

    .line 161
    :cond_0
    return-void
.end method

.method public setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 139
    return-void
.end method

.method public setGroupMemberPickerActionListener(Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mListener:Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;

    .line 117
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I

    .line 131
    return-void
.end method

.method public setModifiedMemberIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "modifiedMemberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 153
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mModifiedMemberIds:Ljava/util/List;

    .line 155
    :cond_0
    return-void
.end method

.method public setSelectAllVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSelectAllVisible:Z

    .line 124
    return-void
.end method

.method public setSoftInputMode()V
    .locals 2

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 647
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSoftInputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 648
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mSoftInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method
