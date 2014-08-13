.class public Lcom/android/contacts/list/PhoneNumberPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;
.implements Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;,
        Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;",
        "Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;"
    }
.end annotation


# static fields
.field private static final KEY_FILTER:Ljava/lang/String; = "filter"

.field private static final KEY_SHORTCUT_ACTION:Ljava/lang/String; = "shortcutAction"

.field private static final MAX_QUERY_STRING_LENGTH:I = 0x3e8

.field private static final SOFT_INPUT_MODE_DEFAULT:I = 0x10

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dataQueryTask:Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;

.field private mAccountFilterHeaderContainer:Landroid/view/View;

.field private mAccountFilterHeaderView:Landroid/widget/TextView;

.field private mActionCode:I

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field protected mHasGalSearchData:Z

.field protected mHasPhoneData:Z

.field protected mHasPhoneSearchData:Z

.field private mIsRecreatedInstance:Z

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

.field private mLoaderStarted:Z

.field private mPaddingView:Landroid/view/View;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShortcutAction:Ljava/lang/String;

.field private mShowNormalContactOnly:Z

.field private mShowSecretContactOnly:Z

.field private mSoftInputMode:I

.field private nUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 102
    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneData:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneSearchData:Z

    .line 104
    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasGalSearchData:Z

    .line 106
    const/16 v0, 0xaa

    iput v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mActionCode:I

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSoftInputMode:I

    .line 136
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;Lcom/android/contacts/list/PhoneNumberPickerFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 139
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setQuickContactEnabled(Z)V

    .line 140
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 142
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 143
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 145
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 146
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setDirectorySearchMode(I)V

    .line 148
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSweepActionEnabled(Z)V

    .line 151
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setFakeQueryModeEnabled(Z)V

    .line 155
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setHasOptionsMenu(Z)V

    .line 156
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/PhoneNumberPickerFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->nUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/PhoneNumberPickerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mActionCode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/PhoneNumberPickerFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .param p1, "isEmpty"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 775
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    if-eqz p1, :cond_3

    .line 783
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mIsRecreatedInstance:Z

    if-nez v0, :cond_2

    .line 784
    const/16 v0, 0x30

    iput v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSoftInputMode:I

    .line 792
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSoftInputMode()V

    .line 794
    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 797
    if-eqz p1, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 787
    :cond_2
    const/16 v0, 0x31

    iput v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSoftInputMode:I

    goto :goto_1

    .line 790
    :cond_3
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSoftInputMode:I

    goto :goto_1

    :cond_4
    move v0, v2

    .line 794
    goto :goto_2

    :cond_5
    move v2, v1

    .line 795
    goto :goto_3
.end method

.method private configureSearchView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 803
    iget-object v6, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mContext:Landroid/content/Context;

    .line 805
    :cond_0
    sget-boolean v6, Lcom/android/contacts/list/PhoneNumberPickerFragment;->sIsTwoPaneMode:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v6, :cond_2

    .line 806
    iget-object v6, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c011e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 808
    .local v1, "defaultSearchViewTopBottomPadding":I
    iget-object v6, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c011f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 811
    .local v4, "searchViewTopBottomPadding":I
    iget-object v6, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0199

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 813
    .local v2, "leftPadding":I
    iget-object v6, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c019a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 815
    .local v3, "rightPadding":I
    sub-int v5, v4, v1

    .line 816
    .local v5, "topPadding":I
    sub-int v0, v4, v1

    .line 818
    .local v0, "bottomPadding":I
    iget-object v6, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 819
    iget-object v6, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v2, v8, v8, v8}, Landroid/widget/SearchView;->setPadding(IIII)V

    .line 824
    .end local v0    # "bottomPadding":I
    .end local v1    # "defaultSearchViewTopBottomPadding":I
    .end local v2    # "leftPadding":I
    .end local v3    # "rightPadding":I
    .end local v4    # "searchViewTopBottomPadding":I
    .end local v5    # "topPadding":I
    :cond_2
    :goto_0
    return-void

    .line 821
    .restart local v0    # "bottomPadding":I
    .restart local v1    # "defaultSearchViewTopBottomPadding":I
    .restart local v2    # "leftPadding":I
    .restart local v3    # "rightPadding":I
    .restart local v4    # "searchViewTopBottomPadding":I
    .restart local v5    # "topPadding":I
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v2, v5, v3, v0}, Landroid/widget/SearchView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private showNoMatchesView(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 708
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 709
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 715
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 709
    goto :goto_0

    :cond_3
    move v2, v1

    .line 710
    goto :goto_1

    .line 711
    :cond_4
    if-nez p1, :cond_1

    .line 712
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateFilterHeaderView()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 365
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 367
    .local v0, "filter":Lcom/android/contacts/list/ContactListFilter;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 368
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_1

    .line 369
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0089

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 391
    .end local v0    # "filter":Lcom/android/contacts/list/ContactListFilter;
    :cond_0
    :goto_0
    return-void

    .line 374
    .restart local v0    # "filter":Lcom/android/contacts/list/ContactListFilter;
    :cond_1
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 375
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e008a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 380
    :cond_2
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    .line 381
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0087

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 388
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 501
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 503
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 504
    .local v0, "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    if-nez v0, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 475
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 477
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    const/4 v1, -0x2

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 479
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 480
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    .line 481
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->setQuickContactEnabled(Z)V

    .line 482
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setPhoneNumbersOnly(Z)V

    .line 495
    .end local v0    # "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    :goto_0
    return-object v0

    .line 492
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 493
    .local v0, "adapter":Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 494
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;
    .locals 2
    .param p1, "contactDatas"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 352
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    .line 354
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const v4, 0x7f0901cd

    const/4 v9, 0x5

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 516
    const v2, 0x7f040070

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 517
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0901a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 518
    const v2, 0x7f090100

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 520
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 521
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 523
    :cond_0
    const v2, 0x7f090314

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 524
    const v2, 0x7f090314

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 527
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 530
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 533
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x3e8

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    .line 536
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v9, v6, v9, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 537
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v7}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 538
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 539
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v6}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 540
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 541
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0e01c2

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;-><init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 580
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 581
    .local v0, "actionCode":I
    const/16 v2, 0x64

    if-ne v0, v2, :cond_3

    .line 582
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v8}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 599
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->configureSearchView()V

    .line 601
    return-object v1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    .line 396
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 397
    return-void
.end method

.method public onCancelChosen()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    sget-object v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 166
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mIsRecreatedInstance:Z

    .line 167
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 171
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListContainer:Landroid/view/View;

    .line 174
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEmptyView:Landroid/view/View;

    .line 177
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 180
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 181
    .local v1, "headerContainer":Landroid/widget/FrameLayout;
    const v2, 0x7f0401dc

    invoke-virtual {p1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, "SearchHeaderView":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v1, v5, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 185
    return-void
.end method

.method public onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "dataInfo"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "checked"    # Z
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 210
    const-wide/16 v0, 0x0

    .line 212
    .local v0, "dataId":J
    :try_start_0
    iget-object v2, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 215
    :goto_0
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->pickPhoneNumber(Landroid/net/Uri;)V

    .line 217
    return-void

    .line 213
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDestroy()V

    .line 198
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->dataQueryTask:Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->dataQueryTask:Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->cancel(Z)Z

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->dataQueryTask:Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;

    .line 202
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 401
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDetach()V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 403
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 447
    const/4 v1, 0x0

    .line 448
    .local v1, "partition":I
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 450
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 457
    :goto_0
    if-nez v2, :cond_1

    .line 465
    :goto_1
    return-void

    .line 452
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 453
    .restart local v2    # "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPartitionForPosition(I)I

    move-result v1

    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "contactId":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUri(Landroid/net/Uri;)V

    .line 463
    new-instance v3, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;

    invoke-direct {v3, p0, p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;-><init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;Lcom/android/contacts/list/PhoneNumberPickerFragment;)V

    iput-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->dataQueryTask:Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;

    .line 464
    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->dataQueryTask:Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment$DataQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
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

    .line 607
    iget-boolean v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEnabled:Z

    if-nez v3, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 612
    .local v0, "loaderId":I
    if-ne v0, v4, :cond_4

    .line 613
    iput v5, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mDirectoryListStatus:I

    .line 614
    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 615
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->startLoading()V

    .line 658
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 659
    if-nez v0, :cond_3

    .line 660
    if-eqz p2, :cond_a

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_a

    .line 662
    iput-boolean v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneData:Z

    .line 666
    :cond_3
    :goto_2
    iget-boolean v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneData:Z

    if-nez v3, :cond_b

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->configureEmptyView(Z)V

    goto :goto_0

    .line 619
    :cond_4
    invoke-virtual {p0, v0, p2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 620
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 623
    invoke-direct {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->configureEmptyView(Z)V

    .line 625
    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 626
    if-nez v0, :cond_5

    .line 628
    iput-boolean v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_1

    .line 630
    :cond_5
    iput-boolean v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasGalSearchData:Z

    goto :goto_1

    .line 634
    :cond_6
    if-nez v0, :cond_7

    .line 635
    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_1

    .line 638
    :cond_7
    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasGalSearchData:Z

    goto :goto_1

    .line 643
    :cond_8
    iput v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mDirectoryListStatus:I

    .line 644
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 647
    iget-boolean v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v3, :cond_2

    .line 648
    iget v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryStatus:I

    if-ne v3, v1, :cond_9

    .line 649
    iput v5, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryStatus:I

    .line 650
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->startFullQuery()V

    goto :goto_1

    .line 651
    :cond_9
    iget v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 652
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryStatus:I

    goto :goto_1

    .line 664
    :cond_a
    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneData:Z

    goto :goto_2

    :cond_b
    move v1, v2

    .line 666
    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 426
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 427
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onHomeInActionBarSelected()V

    .line 431
    :cond_0
    const/4 v1, 0x1

    .line 433
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onPause()V

    .line 191
    return-void
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    .line 738
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 221
    return-void
.end method

.method public onPickerResult(Landroid/net/Uri;J)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataid"    # J

    .prologue
    .line 225
    return-void
.end method

.method public onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "flag"    # Z

    .prologue
    const/4 v6, 0x0

    .line 335
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iget v5, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mActionCode:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;-><init>(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V

    .line 338
    .local v0, "contactDatas":Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 339
    iget v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 340
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->pickPhoneNumber(Landroid/net/Uri;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getSelectedContactName(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    move-object v2, p0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 419
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 420
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 421
    const-string v0, "shortcutAction"

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "shortcutIntent"    # Landroid/content/Intent;

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    .line 733
    return-void
.end method

.method public pickPhoneNumber(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 718
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 719
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v1, p1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 724
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 725
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 726
    .local v0, "builder":Lcom/android/contacts/list/ShortcutIntentBuilder;
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 407
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 409
    if-nez p1, :cond_0

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 414
    const-string v0, "shortcutAction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    :cond_1
    :goto_0
    return-void

    .line 750
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 751
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    .line 753
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    .line 758
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mLoaderStarted:Z

    if-eqz v0, :cond_4

    .line 759
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->reloadData()V

    .line 761
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    goto :goto_0
.end method

.method public setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    .line 160
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 361
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    .line 362
    return-void
.end method

.method public setShortcutAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortcutAction"    # Ljava/lang/String;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    .line 442
    return-void
.end method

.method public setSoftInputMode()V
    .locals 2

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 766
    iget v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSoftInputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 767
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSoftInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->nUri:Landroid/net/Uri;

    .line 229
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 8
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x0

    .line 673
    if-nez p2, :cond_0

    .line 674
    sget-object v4, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    const-string v5, "Data is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 682
    .local v0, "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    if-nez v0, :cond_1

    .line 704
    :goto_1
    return-void

    .line 676
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 677
    .local v1, "count":I
    sget-object v4, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

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

    .line 687
    .end local v1    # "count":I
    .restart local v0    # "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->areAllPartitionsEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 689
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->showNoMatchesView(Z)V

    goto :goto_1

    .line 691
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f090437

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 692
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09017e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 694
    .local v2, "progress":Landroid/widget/ProgressBar;
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->showNoMatchesView(Z)V

    .line 695
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 696
    const v4, 0x7f0e01a0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 697
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 699
    :cond_4
    const v4, 0x7f0e02de

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 700
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 701
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public showNormalContactOnly(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 827
    iput-boolean p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShowNormalContactOnly:Z

    .line 828
    return-void
.end method

.method public showSecretContactOnly(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 831
    iput-boolean p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShowSecretContactOnly:Z

    .line 832
    return-void
.end method

.method protected startLoading()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mLoaderStarted:Z

    .line 470
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 471
    return-void
.end method
