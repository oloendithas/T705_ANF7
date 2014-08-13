.class public Lcom/android/contacts/activities/ActionBarAdapter;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;,
        Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;,
        Lcom/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter;,
        Lcom/android/contacts/activities/ActionBarAdapter$TabState;,
        Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    }
.end annotation


# static fields
.field private static final EASYMODE_CONTACTS_TAB:I = 0x2

.field private static final EASYMODE_DIALER_TAB:I = 0x0

.field private static final EASYMODE_GROUPS_TAB:I = 0x1

.field private static final EASY_MODE_SWITCH:Ljava/lang/String; = "easy_mode_switch"

.field private static final EXTRA_KEY_DELETE_MODE:Ljava/lang/String; = "navBar.deleteMode"

.field private static final EXTRA_KEY_HAS_FOCUS_SEARCHVIEW:Ljava/lang/String; = "hasFocusSearchView"

.field private static final EXTRA_KEY_QUERY:Ljava/lang/String; = "navBar.query"

.field private static final EXTRA_KEY_SEARCH_MODE:Ljava/lang/String; = "navBar.searchMode"

.field private static final EXTRA_KEY_SELECTED_TAB:Ljava/lang/String; = "navBar.selectedTab"

.field private static final FOCUS_DELAY:I = 0xc8

.field private static final MAX_QUERY_STRING_LENGTH:I = 0x3e8

.field private static final PERSISTENT_LAST_TAB:Ljava/lang/String; = "actionBarAdapter.lastTab"

.field private static final TAG:Ljava/lang/String; = "ActionBarAdapter"

.field private static mTalkBackEnable:Z


# instance fields
.field private isSetupTabs:Z

.field private isUpdateTabPosition:Z

.field private mALL:I

.field private final mActionBar:Landroid/app/ActionBar;

.field private mActionBarNavigationMode:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentOrientationmode:I

.field private mCurrentTab:I

.field private mCustomDeleteView:Landroid/view/View;

.field private mCustomSearchView:Landroid/view/View;

.field private mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

.field private mDIALER:I

.field private mDeleteMode:Z

.field private mFAVORITES:I

.field private mGROUPS:I

.field private mHasFocusSearchView:Z

.field private mIsEasyMode:Z

.field private mIsKNOXMode:Z

.field private mIsMultiWindow:Z

.field private mIsPhone:Z

.field private mIsTutorialMode:Z

.field private mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

.field private mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

.field private mNeedToStopSearch:Z

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mQueryString:Ljava/lang/String;

.field private mRestoreFromDeleteMode:Z

.field private mSearchMode:Z

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowHomeIcon:Z

.field private mShowTabsAsText:Z

.field private mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/activities/ActionBarAdapter;->mTalkBackEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;ZZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    .param p3, "actionBar"    # Landroid/app/ActionBar;
    .param p4, "isUsingTwoPanes"    # Z
    .param p5, "isMultiWindow"    # Z

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isUpdateTabPosition:Z

    .line 187
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isSetupTabs:Z

    .line 218
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 279
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsTutorialMode:Z

    .line 317
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    .line 318
    iput-object p2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 319
    iput-object p3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 320
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    .line 321
    iput-boolean p5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsMultiWindow:Z

    .line 324
    iput-boolean p4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    .line 326
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z

    .line 327
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsKNOXMode:Z

    .line 330
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 331
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    .line 340
    :goto_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    .line 341
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    .line 342
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFAVORITES:I

    .line 343
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    .line 345
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-eqz v3, :cond_5

    .line 346
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 347
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    .line 348
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFAVORITES:I

    .line 349
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    .line 350
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    .line 360
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentOrientationmode:I

    .line 362
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040085

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchView:Landroid/view/View;

    .line 364
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 366
    .local v2, "searchViewWidth":I
    if-nez v2, :cond_1

    .line 367
    const/4 v2, -0x1

    .line 369
    :cond_1
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

    .line 370
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchView:Landroid/view/View;

    const v4, 0x7f090100

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    .line 380
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 381
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0e01c2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 383
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 384
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 385
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 388
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 391
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, v3, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x3e8

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 394
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 397
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040041

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    .line 399
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f090119

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 400
    .local v1, "saveMenuItem":Landroid/view/View;
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/ActionBarAdapter$1;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f090115

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 407
    .local v0, "revertMenuItem":Landroid/view/View;
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/ActionBarAdapter$2;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    if-eqz p4, :cond_3

    .line 415
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f090116

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f09011a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f090117

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f09011b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f090118

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f09011c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 424
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f09011c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0e02f4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 431
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isAlwaysTabMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 432
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    .line 433
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 434
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    .line 447
    :goto_2
    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    packed-switch v3, :pswitch_data_0

    .line 457
    :goto_3
    return-void

    .line 336
    .end local v0    # "revertMenuItem":Landroid/view/View;
    .end local v1    # "saveMenuItem":Landroid/view/View;
    .end local v2    # "searchViewWidth":I
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    goto/16 :goto_0

    .line 352
    :cond_5
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsKNOXMode:Z

    if-eqz v3, :cond_0

    .line 353
    :cond_6
    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    .line 354
    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    .line 355
    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFAVORITES:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFAVORITES:I

    .line 356
    iget v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    goto/16 :goto_1

    .line 437
    .restart local v0    # "revertMenuItem":Landroid/view/View;
    .restart local v1    # "saveMenuItem":Landroid/view/View;
    .restart local v2    # "searchViewWidth":I
    :cond_7
    if-eqz p4, :cond_8

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsMultiWindow:Z

    if-eqz v3, :cond_8

    .line 438
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    .line 439
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 440
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    goto :goto_2

    .line 442
    :cond_8
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    .line 443
    new-instance v3, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 444
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    goto :goto_2

    .line 449
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setupTabs()V

    .line 450
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isSetupTabs:Z

    goto :goto_3

    .line 453
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setupNavigationList()V

    .line 454
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isSetupTabs:Z

    goto :goto_3

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/ActionBarAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/ActionBarAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabPositionFromNavigationItemPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/ActionBarAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ActionBarAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsTutorialMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ActionBarAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isUpdateTabPosition:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/contacts/activities/ActionBarAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isUpdateTabPosition:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/ActionBarAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/ActionBarAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/ActionBarAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/ActionBarAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsKNOXMode:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addTab(IIII)V
    .locals 11
    .param p1, "expectedTabIndex"    # I
    .param p2, "icon"    # I
    .param p3, "text"    # I
    .param p4, "contentDescription"    # I

    .prologue
    const v4, 0x7f040002

    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x7f090023

    .line 594
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 595
    .local v1, "tab":Landroid/app/ActionBar$Tab;
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 597
    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    if-eqz v2, :cond_2

    .line 598
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isAlwaysTabMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 599
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 600
    .local v0, "customTab":Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 601
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e04e5

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabStateLength()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 602
    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 622
    .end local v0    # "customTab":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {v1, p4}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 623
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 624
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 626
    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    if-eq p1, v2, :cond_3

    .line 627
    const-string v2, "ActionBarAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expectedTabIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v2, "ActionBarAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tab.getPosition() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Tabs must be created in the right order"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 605
    :cond_1
    invoke-virtual {v1, p3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 609
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 611
    .restart local v0    # "customTab":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 612
    const v2, 0x7f090022

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 613
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 614
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e04e5

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabStateLength()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 615
    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 616
    const-string v2, "feature_wvga"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 618
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabStateLength()I

    move-result v4

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_0

    .line 631
    .end local v0    # "customTab":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private getNavigationItemPositionFromTabPosition(I)I
    .locals 4
    .param p1, "tabPos"    # I

    .prologue
    const/4 v0, 0x3

    .line 526
    packed-switch p1, :pswitch_data_0

    .line 536
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter must be between 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " inclusive."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 528
    :pswitch_0
    const/4 v0, 0x0

    .line 534
    :goto_0
    :pswitch_1
    return v0

    .line 530
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 532
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private getTabPositionFromNavigationItemPosition(I)I
    .locals 4
    .param p1, "navItemPos"    # I

    .prologue
    const/4 v0, 0x3

    .line 507
    packed-switch p1, :pswitch_data_0

    .line 517
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter must be between 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " inclusive."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 509
    :pswitch_0
    const/4 v0, 0x0

    .line 515
    :goto_0
    :pswitch_1
    return v0

    .line 511
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 513
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private loadLastTabPreference()I
    .locals 4

    .prologue
    .line 1228
    :try_start_0
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    .line 1234
    .local v0, "defaultTab":I
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "actionBarAdapter.lastTab"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1237
    .end local v0    # "defaultTab":I
    :goto_0
    return v2

    .line 1235
    :catch_0
    move-exception v1

    .line 1237
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private sendAccessibilityEvent()V
    .locals 4

    .prologue
    .line 1256
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1274
    const-string v0, ""

    .line 1278
    .local v0, "descriptionString":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x20

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 1281
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1282
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1283
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 1284
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 1285
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1286
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1287
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1288
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1289
    :cond_0
    return-void

    .line 1259
    .end local v0    # "descriptionString":Ljava/lang/String;
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1260
    .restart local v0    # "descriptionString":Ljava/lang/String;
    goto :goto_0

    .line 1263
    .end local v0    # "descriptionString":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1264
    .restart local v0    # "descriptionString":Ljava/lang/String;
    goto :goto_0

    .line 1267
    .end local v0    # "descriptionString":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e008e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1268
    .restart local v0    # "descriptionString":Ljava/lang/String;
    goto :goto_0

    .line 1271
    .end local v0    # "descriptionString":Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0212

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1272
    .restart local v0    # "descriptionString":Ljava/lang/String;
    goto :goto_0

    .line 1256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setupNavigationList()V
    .locals 3

    .prologue
    .line 486
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f040071

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter$CustomArrayAdapter;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Landroid/content/Context;I)V

    .line 489
    .local v0, "navAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsKNOXMode:Z

    if-nez v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 493
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-nez v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0212

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 497
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 498
    return-void
.end method

.method private setupTabs()V
    .locals 4

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setEmbeddedTabs()V

    .line 466
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsKNOXMode:Z

    if-nez v0, :cond_1

    .line 468
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    const v1, 0x7f0206db

    const v2, 0x7f0e001e

    const v3, 0x7f0e008f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(IIII)V

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxContainerOnlyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsKNOXMode:Z

    if-nez v0, :cond_2

    .line 483
    :goto_0
    return-void

    .line 476
    :cond_2
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    const v1, 0x7f0206dc

    const v2, 0x7f0e0127

    const v3, 0x7f0e008d

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(IIII)V

    .line 478
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-nez v0, :cond_3

    .line 479
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFAVORITES:I

    const v1, 0x7f0206de

    const v2, 0x7f0e02f3

    const v3, 0x7f0e008e

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(IIII)V

    .line 482
    :cond_3
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    const v1, 0x7f0206d9

    const v2, 0x7f0e0210

    const v3, 0x7f0e0212

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->addTab(IIII)V

    goto :goto_0
.end method

.method private update()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1028
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->isIconified()Z

    move-result v6

    iget-boolean v9, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-ne v6, v9, :cond_5

    move v3, v7

    .line 1029
    .local v3, "isIconifiedChanging":Z
    :goto_0
    iget-boolean v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v6, :cond_6

    .line 1031
    iget-boolean v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowTabsAsText:Z

    if-nez v6, :cond_0

    .line 1033
    :try_start_0
    const-string v6, "com.android.internal.R$id"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v9, "home"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1036
    .local v5, "titleContainerId":I
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1038
    .local v2, "homeIconView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0c011c

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 1040
    .local v4, "sizeOfIcon":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1041
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    .end local v2    # "homeIconView":Landroid/widget/ImageView;
    .end local v4    # "sizeOfIcon":I
    .end local v5    # "titleContainerId":I
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1049
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    .line 1056
    if-eqz v3, :cond_1

    .line 1057
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 1059
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v6

    if-eqz v6, :cond_2

    .line 1060
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1062
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v6, :cond_3

    .line 1063
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v6, v7}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    .line 1069
    :cond_3
    iget-boolean v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mHasFocusSearchView:Z

    if-eqz v6, :cond_4

    .line 1070
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    .line 1071
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    new-instance v7, Lcom/android/contacts/activities/ActionBarAdapter$3;

    invoke-direct {v7, p0}, Lcom/android/contacts/activities/ActionBarAdapter$3;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1136
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->updateDisplayOptions()V

    .line 1137
    return-void

    .end local v3    # "isIconifiedChanging":Z
    :cond_5
    move v3, v8

    .line 1028
    goto/16 :goto_0

    .line 1043
    .restart local v3    # "isIconifiedChanging":Z
    :catch_0
    move-exception v1

    .line 1044
    .local v1, "ex":Ljava/lang/Exception;
    const-string v6, "ActionBarAdapter"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1080
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_6
    iget-boolean v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eqz v6, :cond_7

    .line 1081
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1082
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v6

    if-eqz v6, :cond_4

    .line 1083
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto :goto_2

    .line 1086
    :cond_7
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    .line 1087
    .local v0, "currentNavigationMode":I
    iget v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    if-ne v6, v10, :cond_a

    if-eq v0, v10, :cond_a

    .line 1102
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    iput-boolean v7, v6, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 1103
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v10}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1104
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v7, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1107
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    iput-boolean v8, v6, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 1117
    :cond_8
    :goto_3
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1121
    if-eqz v3, :cond_9

    .line 1122
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 1125
    :cond_9
    iget-boolean v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mRestoreFromDeleteMode:Z

    if-eqz v6, :cond_b

    .line 1126
    iput-boolean v8, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mRestoreFromDeleteMode:Z

    goto :goto_2

    .line 1108
    :cond_a
    iget v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    if-ne v6, v7, :cond_8

    if-eq v0, v7, :cond_8

    .line 1110
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    iput-boolean v7, v6, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->mIgnoreNavigationItemSelected:Z

    .line 1111
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1112
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v7, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v7}, Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1114
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    iput-boolean v8, v6, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;->mIgnoreNavigationItemSelected:Z

    goto :goto_3

    .line 1130
    :cond_b
    iget-boolean v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNeedToStopSearch:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v6, :cond_4

    .line 1131
    iput-boolean v8, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNeedToStopSearch:Z

    .line 1132
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v6, v10}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    .line 1133
    iget-object v6, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v6}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    goto/16 :goto_2
.end method

.method private updateDisplayOptions()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 970
    const/16 v0, 0x1e

    .line 975
    .local v0, "MASK":I
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v3

    and-int/lit8 v1, v3, 0x1e

    .line 978
    .local v1, "current":I
    const/4 v2, 0x0

    .line 979
    .local v2, "newFlags":I
    or-int/lit8 v2, v2, 0x8

    .line 980
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeIcon:Z

    if-eqz v3, :cond_0

    .line 981
    or-int/lit8 v2, v2, 0x2

    .line 983
    :cond_0
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eqz v3, :cond_3

    .line 984
    :cond_1
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v3, :cond_2

    .line 985
    or-int/lit8 v2, v2, 0x4

    .line 986
    :cond_2
    or-int/lit8 v2, v2, 0x10

    .line 988
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const v4, 0x7f02077d

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setIcon(I)V

    .line 989
    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eqz v3, :cond_6

    :cond_4
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 991
    if-eq v1, v2, :cond_5

    .line 997
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 1001
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x1e

    invoke-virtual {v3, v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1003
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v3, :cond_7

    .line 1004
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1025
    :cond_5
    :goto_1
    return-void

    .line 989
    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .line 1005
    :cond_7
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eqz v3, :cond_5

    .line 1007
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const v4, 0x7f0e003e

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1010
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1011
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x13

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_1

    .line 1016
    :cond_8
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_1
.end method


# virtual methods
.method public checkTalkBackEnable()V
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/activities/ActionBarAdapter;->mTalkBackEnable:Z

    .line 1250
    return-void
.end method

.method public clearFocusOnSearchView()V
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1207
    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsKNOXMode:Z

    if-eqz v0, :cond_1

    .line 884
    :cond_0
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    add-int/lit8 v0, v0, 0x1

    .line 886
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    goto :goto_0
.end method

.method public getDeleteDoneActionBarMenuItem()Landroid/view/View;
    .locals 2

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v1, 0x7f090119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 952
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabState(I)I
    .locals 1
    .param p1, "tabState"    # I

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-eqz v0, :cond_0

    .line 224
    packed-switch p1, :pswitch_data_0

    .line 235
    iget p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    .line 255
    :goto_0
    return p1

    .line 226
    :pswitch_0
    iget p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    .line 227
    goto :goto_0

    .line 229
    :pswitch_1
    iget p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    .line 230
    goto :goto_0

    .line 232
    :pswitch_2
    iget p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    .line 233
    goto :goto_0

    .line 239
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 241
    :pswitch_3
    iget p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    .line 242
    goto :goto_0

    .line 244
    :pswitch_4
    iget p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    .line 245
    goto :goto_0

    .line 247
    :pswitch_5
    iget p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFAVORITES:I

    .line 248
    goto :goto_0

    .line 250
    :pswitch_6
    iget p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 239
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getTabStateLength()I
    .locals 2

    .prologue
    .line 260
    const/4 v0, 0x4

    .line 262
    .local v0, "length":I
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-eqz v1, :cond_0

    .line 263
    const/4 v0, 0x3

    .line 265
    :cond_0
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsPhone:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsKNOXMode:Z

    if-eqz v1, :cond_2

    .line 266
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 269
    :cond_2
    return v0
.end method

.method public hideActionbar()V
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 1326
    return-void
.end method

.method public initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V
    .locals 5
    .param p1, "savedState"    # Landroid/os/Bundle;
    .param p2, "request"    # Lcom/android/contacts/list/ContactsRequest;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 542
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 543
    iput-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    .line 552
    :goto_0
    if-nez p1, :cond_3

    .line 553
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 554
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 555
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->loadLastTabPreference()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 557
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mHasFocusSearchView:Z

    .line 571
    :goto_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-eqz v0, :cond_0

    .line 572
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    if-le v0, v4, :cond_0

    .line 573
    iput v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 580
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 584
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    .line 587
    :cond_1
    return-void

    .line 548
    :cond_2
    iput-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    goto :goto_0

    .line 559
    :cond_3
    const-string v0, "navBar.searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 560
    const-string v0, "navBar.query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 562
    const-string v0, "navBar.deleteMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    .line 566
    const-string v0, "navBar.selectedTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 567
    const-string v0, "hasFocusSearchView"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mHasFocusSearchView:Z

    goto :goto_1
.end method

.method public isActionBarModeTab()Z
    .locals 2

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1360
    const/4 v0, 0x1

    .line 1362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentAllTab()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1337
    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-eqz v2, :cond_2

    .line 1338
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1340
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1338
    goto :goto_0

    .line 1340
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isDeleteMode()Z
    .locals 1

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    return v0
.end method

.method public isMultiWindow()Z
    .locals 1

    .prologue
    .line 904
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsMultiWindow:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method public isShowingActionbar()Z
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isUpShowing()Z
    .locals 1

    .prologue
    .line 964
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1180
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1181
    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1147
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1159
    :goto_0
    return v0

    .line 1150
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 1151
    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v2, :cond_2

    .line 1152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1153
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    :cond_1
    :goto_1
    move v0, v1

    .line 1159
    goto :goto_0

    .line 1155
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v2, :cond_1

    .line 1156
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v2, v0}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1167
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 1168
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1170
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1171
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1173
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 1175
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1185
    const-string v1, "navBar.searchMode"

    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1186
    const-string v1, "navBar.query"

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string v1, "navBar.selectedTab"

    iget v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1189
    const-string v1, "navBar.deleteMode"

    iget-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1190
    const/4 v0, 0x0

    .line 1191
    .local v0, "hasSearchViewFocus":Z
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 1192
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    .line 1194
    :cond_0
    const-string v1, "hasFocusSearchView"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1195
    return-void
.end method

.method public removeTabsforKiosk()V
    .locals 2

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxContainerOnlyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsKNOXMode:Z

    if-nez v0, :cond_1

    .line 1371
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1373
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeTabAt(I)V

    .line 1374
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-nez v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFAVORITES:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeTabAt(I)V

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGROUPS:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeTabAt(I)V

    .line 1381
    :cond_1
    return-void
.end method

.method public restoreLastSelectedTab()V
    .locals 1

    .prologue
    .line 1293
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->loadLastTabPreference()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    .line 1294
    return-void
.end method

.method protected saveLastTabPreference(I)V
    .locals 2
    .param p1, "tab"    # I

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "actionBarAdapter.lastTab"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1224
    return-void
.end method

.method public setCurrentTab()V
    .locals 2

    .prologue
    .line 871
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    if-eq v0, v1, :cond_0

    .line 873
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-eqz v0, :cond_1

    .line 874
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(I)V

    .line 879
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    iput v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 880
    return-void

    .line 876
    :cond_1
    iget v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mALL:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(I)V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 1
    .param p1, "tab"    # I

    .prologue
    .line 820
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 821
    return-void
.end method

.method public setCurrentTab(IZ)V
    .locals 3
    .param p1, "tab"    # I
    .param p2, "notifyListener"    # Z

    .prologue
    .line 828
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsEasyMode:Z

    if-eqz v1, :cond_4

    .line 829
    const/4 v1, 0x2

    if-le p1, v1, :cond_0

    .line 830
    const/4 p1, 0x2

    .line 837
    :cond_0
    iput p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    .line 842
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    .line 844
    .local v0, "actionBarSelectedNavIndex":I
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 858
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v1, :cond_2

    .line 859
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    .line 862
    :cond_2
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDIALER:I

    if-eq p1, v1, :cond_3

    .line 863
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(I)V

    .line 865
    .end local v0    # "actionBarSelectedNavIndex":I
    :cond_3
    :goto_1
    return-void

    .line 833
    :cond_4
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 846
    .restart local v0    # "actionBarSelectedNavIndex":I
    :pswitch_0
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    if-eq v1, v0, :cond_1

    .line 847
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 851
    :pswitch_1
    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabPositionFromNavigationItemPosition(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 852
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 844
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDeleteMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 938
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eq v0, p1, :cond_1

    .line 939
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    .line 940
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-nez v0, :cond_0

    .line 941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mRestoreFromDeleteMode:Z

    .line 943
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 945
    :cond_1
    return-void
.end method

.method public setEmbeddedTabs()V
    .locals 7

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    check-cast v0, Lcom/android/internal/app/ActionBarImpl;

    .line 1345
    .local v0, "actionBarImpl":Lcom/android/internal/app/ActionBarImpl;
    const/4 v1, 0x0

    .line 1347
    .local v1, "setHasEmbeddedTabs":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setHasEmbeddedTabs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1348
    if-eqz v1, :cond_0

    .line 1349
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1350
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    :cond_0
    :goto_0
    return-void

    .line 1355
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1354
    :catch_1
    move-exception v2

    goto :goto_0

    .line 1353
    :catch_2
    move-exception v2

    goto :goto_0

    .line 1352
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public setFocusOnSearchView()V
    .locals 2

    .prologue
    .line 1210
    sget-boolean v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    if-eqz v0, :cond_1

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mActive:Z

    if-nez v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1216
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1219
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x2000003

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setImeOptions(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 591
    return-void
.end method

.method public setMultiWindow(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 948
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsMultiWindow:Z

    .line 949
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 956
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 957
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 960
    :cond_0
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 912
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eq v0, p1, :cond_4

    .line 913
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 917
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v0, :cond_0

    .line 918
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNeedToStopSearch:Z

    .line 921
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 922
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-nez v0, :cond_2

    .line 935
    :cond_1
    :goto_0
    return-void

    .line 925
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_3

    .line 926
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    goto :goto_0

    .line 928
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 930
    :cond_4
    if-eqz p1, :cond_1

    .line 932
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    .line 933
    invoke-virtual {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    goto :goto_0
.end method

.method public setTutorialMode(Z)V
    .locals 0
    .param p1, "aIsTutorialMode"    # Z

    .prologue
    .line 1365
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mIsTutorialMode:Z

    .line 1366
    return-void
.end method

.method public shouldShowSearchResult()Z
    .locals 1

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showActionbar()V
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 1330
    return-void
.end method

.method public updateActionBarMode(I)V
    .locals 4
    .param p1, "navigationMode"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1298
    packed-switch p1, :pswitch_data_0

    .line 1322
    :goto_0
    return-void

    .line 1300
    :pswitch_0
    iput v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    .line 1301
    iput-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 1302
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    .line 1303
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1304
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setupNavigationList()V

    .line 1305
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getNavigationItemPositionFromTabPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 1309
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isUpdateTabPosition:Z

    .line 1310
    iput v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBarNavigationMode:I

    .line 1311
    iput-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mNavigationListener:Lcom/android/contacts/activities/ActionBarAdapter$MyNavigationListener;

    .line 1312
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 1313
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1314
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isSetupTabs:Z

    if-nez v0, :cond_0

    .line 1315
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setupTabs()V

    .line 1316
    iput-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->isSetupTabs:Z

    .line 1318
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 1298
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
