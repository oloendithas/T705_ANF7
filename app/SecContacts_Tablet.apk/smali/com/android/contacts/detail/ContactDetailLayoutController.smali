.class public Lcom/android/contacts/detail/ContactDetailLayoutController;
.super Ljava/lang/Object;
.source "ContactDetailLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailLayoutController$4;,
        Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;,
        Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;
    }
.end annotation


# static fields
.field private static final KEY_CONTACT_HAS_UPDATES:Ljava/lang/String; = "contactHasUpdates"

.field private static final KEY_CURRENT_PAGE_INDEX:Ljava/lang/String; = "currentPageIndex"

.field private static final TAB_INDEX_DETAIL:I = 0x0

.field private static final TAB_INDEX_UPDATES:I = 0x1


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mContactHasUpdates:Z

.field private mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private mDetailFragmentView:Landroid/view/View;

.field private mFakeDragXRatio:F

.field private final mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mIsFavoritesDetail:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

.field private final mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

.field private final mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTabCarouselHeader:Landroid/widget/LinearLayout;

.field private mTabCarouselIsAnimating:Z

.field private final mTabCarouselListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

.field private mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

.field private mUpdatesFragmentView:Landroid/view/View;

.field private final mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

.field private mViewPagerState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;Z)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedState"    # Landroid/os/Bundle;
    .param p3, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p4, "viewContainer"    # Landroid/view/View;
    .param p5, "contactDetailFragmentListener"    # Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    .param p6, "isFavoritesDetail"    # Z

    .prologue
    const v6, 0x7f09013f

    const v5, 0x7f090134

    const v4, 0x7f090133

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFakeDragXRatio:F

    .line 662
    new-instance v1, Lcom/android/contacts/detail/ContactDetailLayoutController$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$1;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 784
    new-instance v1, Lcom/android/contacts/detail/ContactDetailLayoutController$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$2;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 807
    new-instance v1, Lcom/android/contacts/detail/ContactDetailLayoutController$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$3;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    .line 107
    if-nez p3, :cond_0

    .line 108
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot initialize a ContactDetailLayoutController without a non-null FragmentManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    .line 113
    if-eqz p6, :cond_3

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonblet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mIsFavoritesDetail:Z

    .line 115
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 117
    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 118
    iput-object p5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "isDialerFrom":Z
    if-eqz p2, :cond_2

    .line 122
    const-string v1, "IsDialerFrom"

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 125
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mIsFavoritesDetail:Z

    if-nez v1, :cond_6

    .line 126
    if-eqz v0, :cond_4

    .line 127
    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 128
    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    .line 129
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselHeader:Landroid/widget/LinearLayout;

    .line 147
    :goto_1
    const v1, 0x7f090135

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    .line 151
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mIsFavoritesDetail:Z

    if-nez v1, :cond_7

    .line 152
    const v1, 0x7f09012f

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    .line 153
    const v1, 0x7f090136

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    .line 160
    :goto_2
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0002

    invoke-virtual {v1, v3, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFakeDragXRatio:F

    .line 164
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_8

    .line 165
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->disableBounceBack(Z)V

    .line 166
    sget-object v1, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->VIEW_PAGER_AND_TAB_CAROUSEL:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    .line 171
    :goto_3
    invoke-direct {p0, p2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->initialize(Landroid/os/Bundle;)V

    .line 172
    return-void

    .end local v0    # "isDialerFrom":Z
    :cond_3
    move v1, v3

    .line 113
    goto :goto_0

    .line 132
    .restart local v0    # "isDialerFrom":Z
    :cond_4
    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 133
    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    .line 134
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 135
    const v1, 0x7f09046d

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselHeader:Landroid/widget/LinearLayout;

    goto :goto_1

    .line 137
    :cond_5
    const v1, 0x7f09016f

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselHeader:Landroid/widget/LinearLayout;

    goto :goto_1

    .line 141
    :cond_6
    const v1, 0x7f09013d

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 142
    const v1, 0x7f09013e

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    .line 143
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselHeader:Landroid/widget/LinearLayout;

    goto/16 :goto_1

    .line 155
    :cond_7
    const v1, 0x7f09013b

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    .line 156
    const v1, 0x7f09013c

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    goto/16 :goto_2

    .line 168
    :cond_8
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->FRAGMENT_CAROUSEL:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    :goto_4
    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    goto :goto_3

    :cond_9
    sget-object v1, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->ONE_COLUMN_NO_TAB:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactDetailLayoutController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/contacts/detail/ContactDetailLayoutController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->syncScrollStateBetweenLists(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/ContactDetailLayoutController;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getOffsetOfFirstItemInList(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/detail/ContactDetailLayoutController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/contacts/detail/ContactDetailLayoutController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/contacts/detail/ContactDetailLayoutController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFakeDragXRatio:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailLayoutController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    return-object v0
.end method

.method private getCurrentPageIndex()I
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 654
    :goto_0
    return v0

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getCurrentPage()I

    move-result v0

    goto :goto_0

    .line 654
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOffsetOfFirstItemInList(I)I
    .locals 1
    .param p1, "currentPageIndex"    # I

    .prologue
    .line 772
    if-nez p1, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->getFirstListItemOffset()I

    move-result v0

    .line 775
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getFirstListItemOffset()I

    move-result v0

    goto :goto_0
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    const/4 v3, 0x1

    .line 176
    .local v3, "fragmentsAddedToFragmentManager":Z
    iget-boolean v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mIsFavoritesDetail:Z

    if-eqz v9, :cond_8

    const-string v0, "view-pager-favorites-about-fragment"

    .line 179
    .local v0, "aboutTag":Ljava/lang/String;
    :goto_0
    iget-boolean v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mIsFavoritesDetail:Z

    if-eqz v9, :cond_9

    const-string v8, "view-pager-favorites-updates-fragment"

    .line 182
    .local v8, "updateTag":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v9, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 185
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v9, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iput-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    .line 188
    const/4 v4, 0x0

    .line 189
    .local v4, "isDialerFrom":Z
    const/4 v6, 0x0

    .line 190
    .local v6, "isPortrait":Z
    const/4 v5, 0x0

    .line 192
    .local v5, "isFonblet":Z
    if-eqz p1, :cond_0

    .line 193
    const-string v9, "IsDialerFrom"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 194
    const-string v9, "Portrait"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 195
    const-string v9, "IsFonblet"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 201
    :cond_0
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->getFromDialer()Z

    move-result v9

    if-eq v9, v4, :cond_2

    .line 202
    :cond_1
    if-eqz v4, :cond_a

    .line 203
    new-instance v9, Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {v9, p1}, Lcom/android/contacts/detail/ContactDetailFragment;-><init>(Landroid/os/Bundle;)V

    iput-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 207
    :goto_2
    new-instance v9, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-direct {v9}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;-><init>()V

    iput-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    .line 208
    const/4 v3, 0x0

    .line 211
    :cond_2
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    invoke-virtual {v9, v10}, Lcom/android/contacts/detail/ContactDetailFragment;->setListener(Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    .line 212
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v9, v10}, Lcom/android/contacts/NfcHandler;->register(Landroid/app/Activity;Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 215
    const/4 v2, 0x0

    .line 216
    .local v2, "currentPageIndex":I
    if-eqz p1, :cond_3

    .line 217
    const-string v9, "contactHasUpdates"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    .line 218
    const-string v9, "currentPageIndex"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 222
    :cond_3
    if-eqz p1, :cond_4

    .line 223
    const-string v9, "IsDialerFrom"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 224
    const-string v9, "Portrait"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 231
    :cond_4
    if-eqz v4, :cond_10

    .line 232
    if-eqz v6, :cond_e

    if-nez v5, :cond_e

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v9, :cond_e

    .line 233
    iget-boolean v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mIsFavoritesDetail:Z

    if-nez v9, :cond_b

    .line 234
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040043

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    .line 236
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f04005b

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    .line 244
    :goto_3
    new-instance v9, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-direct {v9}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;-><init>()V

    iput-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    .line 245
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->setAboutFragmentView(Landroid/view/View;)V

    .line 246
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->setUpdatesFragmentView(Landroid/view/View;)V

    .line 248
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 249
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v9, v10}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 251
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v9, v10}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 253
    if-nez v3, :cond_5

    .line 254
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 255
    .local v7, "transaction":Landroid/app/FragmentTransaction;
    iget-boolean v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mIsFavoritesDetail:Z

    if-nez v9, :cond_c

    .line 256
    const v9, 0x7f09012f

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v7, v9, v10, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 258
    const v9, 0x7f090136

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v7, v9, v10, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 266
    :goto_4
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 267
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v9}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 270
    .end local v7    # "transaction":Landroid/app/FragmentTransaction;
    :cond_5
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-virtual {v9, v10}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setListener(Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;)V

    .line 271
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v9, v2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->restoreCurrentTab(I)V

    .line 274
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselHeader:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_d

    .line 275
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Lcom/android/contacts/detail/ContactDetailFragment;->setTwHeaderView(Landroid/widget/LinearLayout;)V

    .line 439
    :cond_6
    :goto_5
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/detail/ContactDetailFragment;->setLayoutMode(I)V

    .line 441
    if-eqz p1, :cond_7

    .line 442
    iget-boolean v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    if-eqz v9, :cond_1a

    .line 443
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactWithUpdates()V

    .line 448
    :cond_7
    :goto_6
    return-void

    .line 176
    .end local v0    # "aboutTag":Ljava/lang/String;
    .end local v2    # "currentPageIndex":I
    .end local v4    # "isDialerFrom":Z
    .end local v5    # "isFonblet":Z
    .end local v6    # "isPortrait":Z
    .end local v8    # "updateTag":Ljava/lang/String;
    :cond_8
    const-string v0, "view-pager-about-fragment"

    goto/16 :goto_0

    .line 179
    .restart local v0    # "aboutTag":Ljava/lang/String;
    :cond_9
    const-string v8, "view-pager-updates-fragment"

    goto/16 :goto_1

    .line 206
    .restart local v4    # "isDialerFrom":Z
    .restart local v5    # "isFonblet":Z
    .restart local v6    # "isPortrait":Z
    .restart local v8    # "updateTag":Ljava/lang/String;
    :cond_a
    new-instance v9, Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {v9}, Lcom/android/contacts/detail/ContactDetailFragment;-><init>()V

    iput-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    goto/16 :goto_2

    .line 239
    .restart local v2    # "currentPageIndex":I
    :cond_b
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040048

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    .line 241
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f04004b

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    goto/16 :goto_3

    .line 261
    .restart local v7    # "transaction":Landroid/app/FragmentTransaction;
    :cond_c
    const v9, 0x7f09013b

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v7, v9, v10, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 263
    const v9, 0x7f09013c

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v7, v9, v10, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_4

    .line 277
    .end local v7    # "transaction":Landroid/app/FragmentTransaction;
    :cond_d
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    new-instance v10, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V

    invoke-virtual {v9, v10}, Lcom/android/contacts/detail/ContactDetailFragment;->setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 279
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    new-instance v10, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;

    const/4 v11, 0x1

    invoke-direct {v10, p0, v11}, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V

    invoke-virtual {v9, v10}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 281
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v9, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_5

    .line 284
    :cond_e
    if-nez v3, :cond_6

    .line 285
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 286
    .restart local v7    # "transaction":Landroid/app/FragmentTransaction;
    iget-boolean v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mIsFavoritesDetail:Z

    if-nez v9, :cond_f

    .line 287
    const v9, 0x7f09012f

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v7, v9, v10, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 289
    const v9, 0x7f090136

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v7, v9, v10, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 298
    :goto_7
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 299
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v9}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto/16 :goto_5

    .line 292
    :cond_f
    const v9, 0x7f09013b

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v7, v9, v10, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 294
    const v9, 0x7f09013c

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v7, v9, v10, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_7

    .line 305
    .end local v7    # "transaction":Landroid/app/FragmentTransaction;
    :cond_10
    sget-object v9, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->$SwitchMap$com$android$contacts$detail$ContactDetailLayoutController$LayoutMode:[I

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_5

    .line 312
    :pswitch_0
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v9, :cond_6

    .line 314
    iget-boolean v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mIsFavoritesDetail:Z

    if-nez v9, :cond_12

    .line 315
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040043

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    .line 317
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f04005b

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    .line 325
    :goto_8
    new-instance v9, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-direct {v9}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;-><init>()V

    iput-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    .line 326
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->setAboutFragmentView(Landroid/view/View;)V

    .line 327
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->setUpdatesFragmentView(Landroid/view/View;)V

    .line 329
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 330
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 331
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v9, v10}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 332
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v9, v10}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 334
    if-nez v3, :cond_11

    .line 335
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 336
    .restart local v7    # "transaction":Landroid/app/FragmentTransaction;
    iget-boolean v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mIsFavoritesDetail:Z

    if-nez v9, :cond_13

    .line 337
    const v9, 0x7f09012f

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v7, v9, v10, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 339
    const v9, 0x7f090136

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v7, v9, v10, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 347
    :goto_9
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 348
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v9}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 351
    .end local v7    # "transaction":Landroid/app/FragmentTransaction;
    :cond_11
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-virtual {v9, v10}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setListener(Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;)V

    .line 352
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v9, v2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->restoreCurrentTab(I)V

    .line 355
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselHeader:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_14

    .line 356
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Lcom/android/contacts/detail/ContactDetailFragment;->setTwHeaderView(Landroid/widget/LinearLayout;)V

    goto/16 :goto_5

    .line 320
    :cond_12
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040048

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    .line 322
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f04004b

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    goto/16 :goto_8

    .line 342
    .restart local v7    # "transaction":Landroid/app/FragmentTransaction;
    :cond_13
    const v9, 0x7f09013b

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v7, v9, v10, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 344
    const v9, 0x7f09013c

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v7, v9, v10, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_9

    .line 358
    .end local v7    # "transaction":Landroid/app/FragmentTransaction;
    :cond_14
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    new-instance v10, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V

    invoke-virtual {v9, v10}, Lcom/android/contacts/detail/ContactDetailFragment;->setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 360
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    new-instance v10, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;

    const/4 v11, 0x1

    invoke-direct {v10, p0, v11}, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V

    invoke-virtual {v9, v10}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 362
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v9, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_5

    .line 368
    :pswitch_1
    if-nez v3, :cond_6

    .line 369
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 370
    .restart local v7    # "transaction":Landroid/app/FragmentTransaction;
    iget-boolean v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mIsFavoritesDetail:Z

    if-nez v9, :cond_15

    .line 371
    const v9, 0x7f09012f

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v7, v9, v10, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 373
    const v9, 0x7f090136

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v7, v9, v10, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 382
    :goto_a
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 383
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v9}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto/16 :goto_5

    .line 376
    :cond_15
    const v9, 0x7f09013b

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v7, v9, v10, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 378
    const v9, 0x7f09013c

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v7, v9, v10, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_a

    .line 388
    .end local v7    # "transaction":Landroid/app/FragmentTransaction;
    :pswitch_2
    if-nez v3, :cond_6

    .line 389
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 390
    .restart local v7    # "transaction":Landroid/app/FragmentTransaction;
    iget-boolean v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mIsFavoritesDetail:Z

    if-nez v9, :cond_16

    .line 391
    const v9, 0x7f09012f

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v7, v9, v10, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 398
    :goto_b
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 399
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v9}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto/16 :goto_5

    .line 394
    :cond_16
    const v9, 0x7f09013b

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v7, v9, v10, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_b

    .line 408
    .end local v7    # "transaction":Landroid/app/FragmentTransaction;
    :pswitch_3
    if-nez v3, :cond_17

    .line 409
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 410
    .restart local v7    # "transaction":Landroid/app/FragmentTransaction;
    const v9, 0x7f09012f

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v7, v9, v10, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 412
    const v9, 0x7f090136

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v7, v9, v10, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 414
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 415
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v9}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 418
    .end local v7    # "transaction":Landroid/app/FragmentTransaction;
    :cond_17
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 419
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    if-eqz v9, :cond_18

    iget v9, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_18

    iget v9, v1, Landroid/content/res/Configuration;->navigation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_18

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 424
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 425
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 428
    :cond_18
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    if-eqz v9, :cond_19

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    if-eqz v9, :cond_19

    .line 429
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    check-cast v9, Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    check-cast v10, Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    invoke-virtual {v11, v9, v10}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setFragmentViews(Lcom/android/contacts/widget/FrameLayoutWithOverlay;Lcom/android/contacts/widget/FrameLayoutWithOverlay;)V

    .line 433
    :cond_19
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v9, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setCurrentPage(I)V

    goto/16 :goto_5

    .line 445
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_1a
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactWithoutUpdates()V

    goto/16 :goto_6

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showContactWithUpdates()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 540
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    sget-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->$SwitchMap$com$android$contacts$detail$ContactDetailLayoutController$LayoutMode:[I

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 579
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 547
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 582
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    .line 583
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0

    .line 552
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    goto :goto_1

    .line 558
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 560
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->loadData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 561
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->restoreYCoordinate()V

    .line 562
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->enableSwipe(Z)V

    .line 565
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3

    .line 566
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 570
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 575
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->enableSwipe(Z)V

    goto :goto_1

    .line 543
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private showContactWithoutUpdates()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 588
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_0

    .line 630
    :goto_0
    return-void

    .line 591
    :cond_0
    sget-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->$SwitchMap$com$android$contacts$detail$ContactDetailLayoutController$LayoutMode:[I

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 626
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 596
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 629
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0

    .line 599
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    goto :goto_1

    .line 603
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 605
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->enableSwipe(Z)V

    .line 609
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 611
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 619
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setCurrentPage(I)V

    .line 621
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->enableSwipe(Z)V

    goto :goto_1

    .line 591
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private syncScrollStateBetweenLists(I)V
    .locals 2
    .param p1, "currentPageIndex"    # I

    .prologue
    .line 764
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->requestToMoveToOffset(I)V

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->requestToMoveToOffset(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPage()Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    .locals 2

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPageIndex()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 639
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid current item for ViewPager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 637
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hideFragments(Landroid/app/FragmentTransaction;)V
    .locals 1
    .param p1, "transaction"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 928
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 929
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 658
    const-string v0, "contactHasUpdates"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 659
    const-string v0, "currentPageIndex"

    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPageIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 660
    return-void
.end method

.method public setContactData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 1
    .param p1, "data"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 452
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    .line 453
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    if-eqz v0, :cond_1

    .line 454
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactWithUpdates()V

    .line 458
    :goto_1
    return-void

    .line 452
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 456
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactWithoutUpdates()V

    goto :goto_1
.end method

.method public setMotionCallByOrientation(IZ)V
    .locals 1
    .param p1, "config"    # I
    .param p2, "force"    # Z

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/detail/ContactDetailFragment;->setMotionCallByOrientation(IZ)V

    .line 913
    :cond_0
    return-void
.end method

.method public showEmptyState()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 461
    sget-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->$SwitchMap$com$android$contacts$detail$ContactDetailLayoutController$LayoutMode:[I

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 493
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setCurrentPage(I)V

    .line 464
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->enableSwipe(Z)V

    .line 465
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    .line 495
    :goto_0
    return-void

    .line 469
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setEmptyPhoto(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    goto :goto_0

    .line 476
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setEmptyPhoto(Z)V

    .line 477
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 478
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    goto :goto_0

    .line 482
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setEmptyPhoto(Z)V

    .line 483
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 484
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    .line 485
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->loadData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 486
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->enableSwipe(Z)V

    .line 488
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 489
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public showEmptyStatePhoto()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 500
    sget-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->$SwitchMap$com$android$contacts$detail$ContactDetailLayoutController$LayoutMode:[I

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 531
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setCurrentPage(I)V

    .line 503
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->enableSwipe(Z)V

    .line 504
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    .line 533
    :goto_0
    return-void

    .line 508
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setEmptyPhoto(Z)V

    .line 509
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 510
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    goto :goto_0

    .line 515
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setEmptyPhoto(Z)V

    .line 516
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 517
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    goto :goto_0

    .line 521
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setEmptyPhoto(Z)V

    .line 522
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 523
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    .line 524
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->loadData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 525
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->enableSwipe(Z)V

    .line 527
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 500
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public showFragments(Landroid/app/FragmentTransaction;)V
    .locals 1
    .param p1, "transaction"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 923
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 924
    return-void
.end method

.method public unregisterMotionCallManager()V
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->unregisterMotionCallManager()V

    .line 919
    :cond_0
    return-void
.end method
