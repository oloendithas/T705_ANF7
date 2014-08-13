.class public Lcom/android/contacts/list/ContactPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "ContactPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;"
    }
.end annotation


# static fields
.field private static final FINISH_ACTIVITY_CREATED_COMPELET_FLAG:Ljava/lang/String; = "finishActivityCreatedComplete"

.field private static final KEY_CREATE_CONTACT_ENABLED:Ljava/lang/String; = "createContactEnabled"

.field private static final KEY_EDIT_MODE:Ljava/lang/String; = "editMode"

.field private static final KEY_EMAIL_MODE:Ljava/lang/String; = "mailMode"

.field private static final KEY_ONLY_PHONE_NUMBER_PROJECTION:Ljava/lang/String; = "onlyphonnumberprojection"

.field private static final KEY_PHOTO_MODE:Ljava/lang/String; = "photomode"

.field private static final KEY_RINGTONE_MODE:Ljava/lang/String; = "ringtonemode"

.field private static final KEY_SHORTCUT_REQUESTED:Ljava/lang/String; = "shortcutRequested"

.field private static final KEY_TUTORIAL_MODE:Ljava/lang/String; = "tutorialmode"

.field private static final MAX_QUERY_STRING_LENGTH:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ContactPickerFragment"


# instance fields
.field private OnlyPhoneNumberProjection:Z

.field public mAttachPhotoMode:Z

.field private mCreateContactEnabled:Z

.field private mEditMode:Z

.field public mEmailMode:Z

.field private mEmptyView:Landroid/view/View;

.field private mFinishActivityonCreateComplete:Z

.field protected mHasPhoneData:Z

.field private mIsSearchFocus:Z

.field private mIsTutorialMode:Z

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

.field public mRingtoneMode:Z

.field protected mSearchLayout:Landroid/view/View;

.field private mSearchNoMatchesView:Landroid/view/View;

.field protected mSearchView:Landroid/widget/SearchView;

.field private mShortcutRequested:Z

.field private mShowNormalContactOnly:Z

.field private mShowSecretContactOnly:Z

.field private mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 109
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    .line 114
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mIsSearchFocus:Z

    .line 121
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 125
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setQuickContactEnabled(Z)V

    .line 128
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setDirectorySearchMode(I)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setSweepActionEnabled(Z)V

    .line 132
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setFinishActivityonCreateComplete(Z)V

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setFakeQueryModeEnabled(Z)V

    .line 136
    return-void
.end method

.method private TutorialPopupTouch()V
    .locals 13

    .prologue
    const v10, 0x7f0c0187

    const v11, 0x7f0c0186

    const/4 v4, 0x0

    .line 740
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 743
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v10, v1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v11, v1

    move v12, v4

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 746
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactPickerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactPickerFragment;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mIsTutorialMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactPickerFragment;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactPickerFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/ContactPickerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactPickerFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/contacts/list/ContactPickerFragment;->showUpdateExistingTutorialPopup()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/contacts/list/ContactPickerFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ContactPickerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mIsSearchFocus:Z

    return p1
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .param p1, "isEmpty"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 306
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 312
    if-eqz p1, :cond_3

    .line 313
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x31

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 320
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 323
    if-eqz p1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 316
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 320
    goto :goto_2

    :cond_5
    move v2, v1

    .line 321
    goto :goto_3
.end method

.method private configureSearchView()V
    .locals 8

    .prologue
    .line 769
    iget-object v6, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    .line 772
    :cond_0
    sget-boolean v6, Lcom/android/contacts/list/ContactPickerFragment;->sIsTwoPaneMode:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v6, :cond_1

    .line 776
    iget-object v6, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c011e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 778
    .local v1, "defaultSearchViewTopBottomPadding":I
    iget-object v6, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c011f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 781
    .local v4, "searchViewTopBottomPadding":I
    iget-object v6, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0199

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 783
    .local v2, "leftPadding":I
    iget-object v6, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c019a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 785
    .local v3, "rightPadding":I
    sub-int v5, v4, v1

    .line 786
    .local v5, "topPadding":I
    sub-int v0, v4, v1

    .line 788
    .local v0, "bottomPadding":I
    iget-object v6, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchLayout:Landroid/view/View;

    invoke-virtual {v6, v2, v5, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 790
    .end local v0    # "bottomPadding":I
    .end local v1    # "defaultSearchViewTopBottomPadding":I
    .end local v2    # "leftPadding":I
    .end local v3    # "rightPadding":I
    .end local v4    # "searchViewTopBottomPadding":I
    .end local v5    # "topPadding":I
    :cond_1
    return-void
.end method

.method private showNoMatchesView(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 529
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 533
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 530
    goto :goto_0

    :cond_3
    move v2, v1

    .line 531
    goto :goto_1
.end method

.method private showUpdateExistingTutorialPopup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 750
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mIsSearchFocus:Z

    if-eqz v0, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    :cond_2
    new-instance v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 757
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const v1, 0x7f0e045a

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setText(Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    .line 760
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravity(I)V

    .line 761
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setArrowVisibility(Z)V

    .line 762
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIsSmallWindow(Z)V

    .line 763
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->showWithoutCir(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 412
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 414
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 415
    .local v0, "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDataRestrictedByCallingPackage(Z)V

    .line 418
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isCreateContactEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 419
    return-void

    .line 418
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 344
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    const/4 v1, -0x2

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 346
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 347
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    .line 348
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->setQuickContactEnabled(Z)V

    .line 350
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setPhoneNumbersOnly(Z)V

    .line 352
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setRingToneMode(Z)V

    .line 353
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setAttachPhotoMode(Z)V

    .line 364
    .end local v0    # "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    :goto_0
    return-object v0

    .line 361
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 362
    .local v0, "adapter":Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 363
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public createNewContact()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFinishActivityonCreateComplete:Z

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onCreateNewContactAction(Z)V

    .line 330
    return-void
.end method

.method public editContact(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onEditContactAction(Landroid/net/Uri;)V

    .line 334
    return-void
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x5

    const v10, 0x7f090314

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 538
    const v3, 0x7f040070

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 539
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0901a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchLayout:Landroid/view/View;

    .line 540
    const v3, 0x7f090100

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 542
    const v3, 0x7f0901cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 543
    const v3, 0x7f0901cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 545
    :cond_0
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 546
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 549
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 552
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x0

    invoke-virtual {v3, v8, v4}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 555
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, v3, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v4, v8, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x3e8

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    .line 558
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, v3, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-instance v4, Lcom/android/contacts/list/ContactPickerFragment$2;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactPickerFragment$2;-><init>(Lcom/android/contacts/list/ContactPickerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 576
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, v3, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, v11, v7, v11, v7}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 577
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v8}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 578
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 579
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    .line 580
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v4, 0x7f0e01c2

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/contacts/list/ContactPickerFragment$3;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactPickerFragment$3;-><init>(Lcom/android/contacts/list/ContactPickerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 619
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 620
    .local v0, "actionCode":I
    const/16 v3, 0x64

    if-ne v0, v3, :cond_3

    .line 621
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v9}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 636
    :cond_3
    sparse-switch v0, :sswitch_data_0

    .line 663
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/list/ContactPickerFragment;->configureSearchView()V

    .line 665
    return-object v2

    .line 638
    :sswitch_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_4

    .line 644
    :sswitch_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getHideCreateLabel()Z

    move-result v3

    if-nez v3, :cond_4

    .line 647
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    if-eqz v3, :cond_4

    .line 648
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 649
    .local v1, "newButton":Landroid/widget/ImageButton;
    if-eqz v1, :cond_4

    .line 650
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 651
    new-instance v3, Lcom/android/contacts/list/ContactPickerFragment$4;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/ContactPickerFragment$4;-><init>(Lcom/android/contacts/list/ContactPickerFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 636
    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public isCreateContactEnabled()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    return v0
.end method

.method public isEditMode()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    return v0
.end method

.method public isShortcutRequested()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    const-string v4, "ContactPickerFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateLoader(id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    .line 373
    new-instance v3, Lcom/android/contacts/list/DirectoryListLoader;

    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/contacts/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    .line 374
    .local v3, "loader":Lcom/android/contacts/list/DirectoryListLoader;
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDirectoryLoader(Lcom/android/contacts/list/DirectoryListLoader;)V

    .line 406
    .end local v3    # "loader":Lcom/android/contacts/list/DirectoryListLoader;
    :cond_0
    :goto_0
    return-object v3

    .line 378
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->shouldIncludeProfile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 379
    new-instance v3, Lcom/android/contacts/list/ProfileAndContactsLoader;

    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/contacts/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    .line 383
    .local v3, "loader":Landroid/content/CursorLoader;
    :goto_1
    if-eqz p2, :cond_3

    const-string v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 386
    .local v1, "directoryId":J
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v3, v1, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    .line 389
    iget-boolean v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v4, :cond_0

    .line 390
    iget v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    if-nez v4, :cond_0

    .line 391
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 392
    const-string v4, "ContactPickerFragment"

    const-string v5, "onCreateLoader(), set fake mode"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    .line 395
    invoke-virtual {v3}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 396
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v4, "limit"

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 398
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 381
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "directoryId":J
    .end local v3    # "loader":Landroid/content/CursorLoader;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;

    move-result-object v3

    .restart local v3    # "loader":Landroid/content/CursorLoader;
    goto :goto_1

    .line 383
    :cond_3
    const-wide/16 v1, 0x0

    goto :goto_2
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    .line 218
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    .line 220
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    .line 221
    iget-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 233
    iget-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 234
    iget-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 235
    const-string v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "productname":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "ks02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 238
    iget-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->requestFocus()Z

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/android/contacts/list/ContactPickerFragment$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/ContactPickerFragment$1;-><init>(Lcom/android/contacts/list/ContactPickerFragment;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    return-void

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 241
    iget-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method protected onItemClick(IJ)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 268
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 269
    .local v0, "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 276
    .local v2, "uri":Landroid/net/Uri;
    :goto_0
    if-nez v2, :cond_2

    .line 303
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    :cond_0
    :goto_1
    return-void

    .line 272
    .end local v2    # "uri":Landroid/net/Uri;
    .restart local v0    # "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    if-eqz v3, :cond_3

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .end local v0    # "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    :cond_3
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    if-eqz v3, :cond_6

    .line 283
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmailMode:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 284
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/ContactListAdapter;->isSimContact(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 286
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0e004c

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 293
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->editContact(Landroid/net/Uri;)V

    goto :goto_1

    .line 296
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->editContact(Landroid/net/Uri;)V

    goto :goto_1

    .line 297
    :cond_6
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    if-eqz v3, :cond_7

    .line 298
    new-instance v1, Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 299
    .local v1, "builder":Lcom/android/contacts/list/ShortcutIntentBuilder;
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    goto :goto_1

    .line 301
    .end local v1    # "builder":Lcom/android/contacts/list/ShortcutIntentBuilder;
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->pickContact(Landroid/net/Uri;)V

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
    .line 261
    .local p1, "parent":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 263
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 8
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
    const/4 v7, 0x3

    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 424
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEnabled:Z

    if-nez v2, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 429
    .local v1, "loaderId":I
    if-ne v1, v6, :cond_5

    .line 430
    iput v5, p0, Lcom/android/contacts/list/ContactPickerFragment;->mDirectoryListStatus:I

    .line 431
    iget-object v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->startLoading()V

    .line 457
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 458
    if-nez v1, :cond_3

    .line 459
    if-eqz p2, :cond_8

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 461
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    .line 465
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    if-nez v2, :cond_9

    move v2, v3

    :goto_3
    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->configureEmptyView(Z)V

    .line 468
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mIsTutorialMode:Z

    if-eqz v2, :cond_4

    .line 469
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    if-nez v2, :cond_a

    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->showTutorialPopup(Z)V

    .line 473
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 474
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v2, v7, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->navigation:I

    if-ne v2, v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->requestFocus()Z

    goto :goto_0

    .line 436
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_5
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/ContactPickerFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 440
    invoke-direct {p0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->configureEmptyView(Z)V

    goto :goto_1

    .line 442
    :cond_6
    iput v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mDirectoryListStatus:I

    .line 443
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 446
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v2, :cond_2

    .line 447
    iget v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    if-ne v2, v3, :cond_7

    .line 448
    iput v5, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    .line 449
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->startFullQuery()V

    goto :goto_1

    .line 450
    :cond_7
    iget v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    if-ne v2, v7, :cond_2

    .line 451
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    goto :goto_1

    .line 463
    :cond_8
    iput-boolean v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    goto :goto_2

    :cond_9
    move v2, v4

    .line 465
    goto :goto_3

    :cond_a
    move v3, v4

    .line 469
    goto :goto_4
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 74
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    .line 700
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 186
    const-string v0, "mailMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmailMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    const-string v0, "editMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    const-string v0, "createContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    const-string v0, "shortcutRequested"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    const-string v0, "onlyphonnumberprojection"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    const-string v0, "photomode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    const-string v0, "ringtonemode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    const-string v0, "finishActivityCreatedComplete"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFinishActivityonCreateComplete:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    const-string v0, "tutorialmode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mIsTutorialMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "shortcutIntent"    # Landroid/content/Intent;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/list/OnContactPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    .line 695
    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    .line 338
    return-void
.end method

.method protected prepareEmptyView()V
    .locals 2

    .prologue
    const v1, 0x7f0e00a4

    .line 670
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    :goto_0
    return-void

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isSyncActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 673
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    if-eqz v0, :cond_1

    .line 675
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setEmptyText(I)V

    goto :goto_0

    .line 676
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    const v0, 0x7f0e00a7

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setEmptyText(I)V

    goto :goto_0

    .line 679
    :cond_2
    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setEmptyText(I)V

    goto :goto_0

    .line 682
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    if-eqz v0, :cond_4

    .line 684
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setEmptyText(I)V

    goto :goto_0

    .line 685
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 686
    const v0, 0x7f0e00a6

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setEmptyText(I)V

    goto :goto_0

    .line 688
    :cond_5
    const v0, 0x7f0e00a8

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setEmptyText(I)V

    goto :goto_0
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 201
    if-nez p1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v0, "mailMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmailMode:Z

    .line 206
    const-string v0, "editMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    .line 207
    const-string v0, "createContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    .line 208
    const-string v0, "shortcutRequested"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    .line 209
    const-string v0, "onlyphonnumberprojection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    .line 210
    const-string v0, "photomode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    .line 211
    const-string v0, "ringtonemode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    .line 212
    const-string v0, "finishActivityCreatedComplete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFinishActivityonCreateComplete:Z

    .line 213
    const-string v0, "tutorialmode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mIsTutorialMode:Z

    goto :goto_0
.end method

.method public setAttachPhotoMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 707
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    .line 708
    return-void
.end method

.method public setCreateContactEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    .line 148
    return-void
.end method

.method public setEditMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    .line 156
    return-void
.end method

.method public setEmailMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 711
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmailMode:Z

    .line 712
    return-void
.end method

.method public setFinishActivityonCreateComplete(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFinishActivityonCreateComplete:Z

    .line 176
    return-void
.end method

.method public setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/OnContactPickerActionListener;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    .line 140
    return-void
.end method

.method public setOnlyPhoneNumberProjection(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    .line 181
    return-void
.end method

.method public setRingToneMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 703
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    .line 704
    return-void
.end method

.method public setShortcutRequested(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    .line 164
    return-void
.end method

.method public setTutorialMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 716
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mIsTutorialMode:Z

    .line 717
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 8
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x0

    .line 486
    if-nez p2, :cond_0

    .line 487
    const-string v4, "ContactPickerFragment"

    const-string v5, "Data is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/list/LegacyContactListAdapter;

    if-eqz v4, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    .line 501
    .local v0, "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    :goto_1
    if-nez v0, :cond_2

    .line 524
    :goto_2
    return-void

    .line 489
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 490
    .local v1, "count":I
    const-string v4, "ContactPickerFragment"

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

    .line 498
    .end local v1    # "count":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .restart local v0    # "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    goto :goto_1

    .line 506
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->areAllPartitionsEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 508
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/contacts/list/ContactPickerFragment;->showNoMatchesView(Z)V

    goto :goto_2

    .line 510
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f090437

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 511
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09017e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 513
    .local v2, "progress":Landroid/widget/ProgressBar;
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->showNoMatchesView(Z)V

    .line 515
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 516
    const v4, 0x7f0e01a0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 517
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 519
    :cond_5
    const v4, 0x7f0e02de

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 520
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 521
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2
.end method

.method public showNormalContactOnly(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShowNormalContactOnly:Z

    .line 168
    return-void
.end method

.method public showSecretContactOnly(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShowSecretContactOnly:Z

    .line 172
    return-void
.end method

.method public showTutorialPopup(Z)V
    .locals 4
    .param p1, "isEmpty"    # Z

    .prologue
    .line 720
    if-eqz p1, :cond_1

    .line 721
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setVisibility(I)V

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0e00a5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 725
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/contacts/list/ContactPickerFragment$5;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactPickerFragment$5;-><init>(Lcom/android/contacts/list/ContactPickerFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 737
    :goto_0
    return-void

    .line 735
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/list/ContactPickerFragment;->showUpdateExistingTutorialPopup()V

    goto :goto_0
.end method
