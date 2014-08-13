.class public Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;
.super Landroid/app/Fragment;
.source "FavoriteFonbletFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;,
        Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;,
        Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailLandFragmentListener;,
        Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrquentLandPositionChangeLisener;,
        Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrquentPortPositionChangeLisener;,
        Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListFragmentDataChangeListener;,
        Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListPortFragmentListener;,
        Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListLandFragmentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FavoriteFonbletFragment"

.field private static isFavouriteEmptyStatus:Z


# instance fields
.field private mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private mContactDetailLandLoaderFragmentListener:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;

.field private mContext:Landroid/content/Context;

.field private mFavoritesLandFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private mFavoritesPortFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private mFragmentView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mLandEmptyView:Landroid/view/View;

.field private mPhoneBrowserView:Landroid/view/View;

.field private mPhoneDetailsView:Landroid/view/View;

.field private mPhoneFavoritePortraitView:Landroid/view/View;

.field private mPortEmptyView:Landroid/view/View;

.field private mPositionLandChangeListener:Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;

.field private mPositionPortChangeListener:Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;

.field private mSplitBarManager:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

.field private mStrequentDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

.field private mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field private mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->isFavouriteEmptyStatus:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListLandFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListLandFragmentListener;-><init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFavoritesLandFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    .line 82
    new-instance v0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListPortFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListPortFragmentListener;-><init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFavoritesPortFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    .line 85
    new-instance v0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListFragmentDataChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListFragmentDataChangeListener;-><init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    .line 87
    new-instance v0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;-><init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLoaderFragmentListener:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;

    .line 90
    new-instance v0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrquentPortPositionChangeLisener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrquentPortPositionChangeLisener;-><init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPositionPortChangeListener:Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;

    .line 93
    new-instance v0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrquentLandPositionChangeLisener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrquentLandPositionChangeLisener;-><init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPositionLandChangeListener:Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;

    .line 383
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)Lcom/android/contacts/list/ContactTileListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)Lcom/android/contacts/list/ContactTileListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)Lcom/android/contacts/detail/ContactLoaderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 59
    sput-boolean p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->isFavouriteEmptyStatus:Z

    return p0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->selectLayout(IZ)V

    return-void
.end method

.method private makeLayout()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0902e7

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileListFragment;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFavoritesPortFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactTileListFragment;->setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPositionPortChangeListener:Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactTileListFragment;->setPositionChangeListener(Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->enableQuickContact(Z)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v3, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactTileListFragment;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setSelectionVisible(Z)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0902bb

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileListFragment;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 122
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0902c2

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactLoaderFragment;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->enableQuickContact(Z)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v3, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactTileListFragment;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v6}, Lcom/android/contacts/list/ContactTileListFragment;->setSelectionVisible(Z)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFavoritesLandFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactTileListFragment;->setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactTileListFragment;->setDataChangeListener(Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPositionLandChangeListener:Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactTileListFragment;->setPositionChangeListener(Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLoaderFragmentListener:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactLoaderFragment;->setFavoriteDetailListener(Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;)V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-nez v0, :cond_2

    .line 137
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v11, v0, Landroid/content/res/Configuration;->orientation:I

    .line 138
    .local v11, "config":I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v2, "landscapeSavedState":Landroid/os/Bundle;
    const-string v0, "IsDialerFrom"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    const-string v3, "Portrait"

    if-ne v11, v6, :cond_4

    move v0, v6

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    const-string v0, "IsFonblet"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFragmentView:Landroid/view/View;

    const v10, 0x7f0902c0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailLandFragmentListener;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailLandFragmentListener;-><init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)V

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;Z)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    .line 149
    .end local v2    # "landscapeSavedState":Landroid/os/Bundle;
    .end local v11    # "config":I
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mSplitBarManager:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    if-nez v0, :cond_3

    .line 152
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mSplitBarManager:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0902b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 155
    .local v4, "id_split_bar_colored":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0900d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 156
    .local v5, "id_split_bar_left":Landroid/widget/ImageButton;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0902be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 157
    .local v6, "id_split_bar_right":Landroid/widget/ImageButton;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0902b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 158
    .local v8, "id_tab_list_container":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0902ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 159
    .local v7, "id_split_hover":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mSplitBarManager:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual/range {v3 .. v10}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setValues(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/view/View;Landroid/widget/FrameLayout;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/android/contacts/list/ContactTileListFragment;)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mSplitBarManager:Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->onCreate()V

    .line 165
    .end local v4    # "id_split_bar_colored":Landroid/widget/LinearLayout;
    .end local v5    # "id_split_bar_left":Landroid/widget/ImageButton;
    .end local v6    # "id_split_bar_right":Landroid/widget/ImageButton;
    .end local v7    # "id_split_hover":Landroid/widget/LinearLayout;
    .end local v8    # "id_tab_list_container":Landroid/widget/FrameLayout;
    :cond_3
    return-void

    .restart local v2    # "landscapeSavedState":Landroid/os/Bundle;
    .restart local v11    # "config":I
    :cond_4
    move v0, v1

    .line 141
    goto :goto_0
.end method

.method private selectLayout(IZ)V
    .locals 7
    .param p1, "config"    # I
    .param p2, "empty"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 167
    const-string v1, "FavoriteFonbletFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectLayout empty : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-eqz p2, :cond_2

    .line 169
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPhoneFavoritePortraitView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPhoneBrowserView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPhoneDetailsView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 173
    if-ne p1, v6, :cond_1

    .line 174
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPortEmptyView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mLandEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPortEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mLandEmptyView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPortEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mLandEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 185
    if-ne p1, v6, :cond_6

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPhoneDetailsView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPhoneBrowserView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPhoneFavoritePortraitView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 190
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 191
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v1, :cond_3

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 195
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v1, :cond_4

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 198
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v1, :cond_5

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 202
    :cond_5
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 203
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 206
    .end local v0    # "transaction":Landroid/app/FragmentTransaction;
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPhoneFavoritePortraitView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPhoneDetailsView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPhoneBrowserView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 211
    .restart local v0    # "transaction":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v1, :cond_7

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 215
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v1, :cond_8

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 218
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v1, :cond_9

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 222
    :cond_9
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 223
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileListFragment;->getSelectFavoriteUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileListFragment;->getSelectFavoriteUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->reLoadUri(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->getItemCount()I

    move-result v0

    .line 423
    :goto_0
    return v0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->getItemCount()I

    move-result v0

    goto :goto_0

    .line 423
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 295
    const-string v1, "FavoriteFonbletFragment"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 299
    .local v0, "config":I
    sget-boolean v1, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->isFavouriteEmptyStatus:Z

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->selectLayout(IZ)V

    .line 300
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->setMotionCallByOrientation(IZ)V

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileListFragment;->initStreListView()V

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileListFragment;->initStreListView()V

    .line 304
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 459
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 462
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const-string v0, "FavoriteFonbletFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mHandler:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 239
    const-string v0, "FavoriteFonbletFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 242
    const v0, 0x7f04013a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFragmentView:Landroid/view/View;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0902e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPhoneFavoritePortraitView:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0902b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPhoneBrowserView:Landroid/view/View;

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0902bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPhoneDetailsView:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f09008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mPortEmptyView:Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mLandEmptyView:Landroid/view/View;

    .line 251
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->makeLayout()V

    .line 252
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    sget-boolean v1, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->isFavouriteEmptyStatus:Z

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->selectLayout(IZ)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mFragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 288
    const-string v0, "FavoriteFonbletFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 275
    const-string v0, "FavoriteFonbletFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 269
    const-string v0, "FavoriteFonbletFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 260
    const-string v0, "FavoriteFonbletFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->initStreListView()V

    .line 264
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 282
    .local v0, "config":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->setMotionCallByOrientation(IZ)V

    .line 283
    return-void
.end method

.method public setMotionCallByOrientation(IZ)V
    .locals 4
    .param p1, "config"    # I
    .param p2, "force"    # Z

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 437
    .local v0, "isVisible":Z
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/contacts/activities/DialtactsActivity;

    .line 439
    .local v1, "mActivity":Lcom/android/contacts/activities/DialtactsActivity;
    invoke-virtual {v1}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 440
    const/4 v0, 0x1

    .line 445
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 446
    iget-object v2, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v2, p1, p2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->setMotionCallByOrientation(IZ)V

    .line 448
    :cond_0
    return-void

    .line 442
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStreListViewState(Z)V
    .locals 1
    .param p1, "bListViewState"    # Z

    .prologue
    .line 428
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->setStreListViewState(Z)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentPortFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->setStreListViewState(Z)V

    .line 432
    :cond_1
    return-void
.end method

.method public unregisterMotionCallManager()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->unregisterMotionCallManager()V

    .line 454
    :cond_0
    return-void
.end method
