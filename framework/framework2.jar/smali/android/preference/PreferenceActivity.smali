.class public abstract Landroid/preference/PreferenceActivity;
.super Landroid/app/ListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceActivity$Header;,
        Landroid/preference/PreferenceActivity$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"

.field private static final SPLIT_BAR_MOVEABLE_AREA_MAX:F = 0.66f

.field private static final SPLIT_BAR_MOVEABLE_AREA_MIN:F = 0.08f

.field private static final SPLIT_BAR_SPLIT_X_IN_FULLVIEW:F = 12.0f

.field private static final TAG:Ljava/lang/String; = "PreferenceActivity"

.field private static mSplitBarMovedLeftWeight:F

.field private static mUserUpdateSplit:Z


# instance fields
.field private mCurHeader:Landroid/preference/PreferenceActivity$Header;

.field private mEnableSplitBar:Z

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDeviceDefault:Z

.field private mIsMultiPane:Z

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceActivityLayoutResID:I

.field private mPreferenceHeaderItemLayoutResID:I

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z

.field private mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

.field private mSplitBarView:Landroid/view/View;

.field private mUpdateLayoutBySplitChange:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 230
    const/high16 v0, -0x40800000

    sput v0, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    .line 233
    const/4 v0, 0x0

    sput-boolean v0, Landroid/preference/PreferenceActivity;->mUserUpdateSplit:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 228
    iput-object v2, p0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    .line 232
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z

    .line 235
    iput-object v2, p0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    .line 249
    new-instance v0, Landroid/preference/PreferenceActivity$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceActivity$1;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 680
    const v0, 0x1090099

    iput v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceActivityLayoutResID:I

    .line 681
    const v0, 0x1090095

    iput v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemLayoutResID:I

    .line 1092
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z

    .line 1093
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mIsMultiPane:Z

    return-void
.end method

.method static synthetic access$000(Landroid/preference/PreferenceActivity;)V
    .registers 1
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/preference/PreferenceActivity;)Z
    .registers 2
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/preference/PreferenceActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z

    return p1
.end method

.method static synthetic access$1102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, Landroid/preference/PreferenceActivity;->mUserUpdateSplit:Z

    return p0
.end method

.method static synthetic access$1200()F
    .registers 1

    .prologue
    .line 133
    sget v0, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    return v0
.end method

.method static synthetic access$1202(F)F
    .registers 1
    .param p0, "x0"    # F

    .prologue
    .line 133
    sput p0, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    return p0
.end method

.method static synthetic access$200(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;
    .registers 2
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$600(Landroid/preference/PreferenceActivity;)Z
    .registers 2
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z

    return v0
.end method

.method static synthetic access$700(Landroid/preference/PreferenceActivity;)Z
    .registers 2
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private bindPreferences()V
    .registers 3

    .prologue
    .line 1841
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1842
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_19

    .line 1843
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1844
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_19

    .line 1845
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1846
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1849
    :cond_19
    return-void
.end method

.method private postBindPreferences()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1836
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1838
    :goto_9
    return-void

    .line 1837
    :cond_a
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9
.end method

.method private requirePreferenceManager()V
    .registers 3

    .prologue
    .line 1864
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_18

    .line 1865
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_10

    .line 1866
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1868
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1871
    :cond_18
    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "direction"    # I

    .prologue
    .line 1645
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ":android:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1647
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 1648
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1651
    :cond_29
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1652
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1653
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1654
    const v2, 0x1020389

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1655
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1656
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1922
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1924
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1925
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .registers 4
    .param p1, "preferencesResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1938
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1940
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1942
    return-void
.end method

.method findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;
    .registers 12
    .param p1, "cur"    # Landroid/preference/PreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)",
            "Landroid/preference/PreferenceActivity$Header;"
        }
    .end annotation

    .prologue
    .local p2, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v8, 0x1

    .line 1693
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1694
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2b

    .line 1695
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1696
    .local v3, "oh":Landroid/preference/PreferenceActivity$Header;
    if-eq p1, v3, :cond_25

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3a

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3a

    .line 1698
    :cond_25
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1699
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_2b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1717
    .local v0, "NM":I
    if-ne v0, v8, :cond_72

    .line 1718
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    move-object v3, v4

    .line 1734
    :cond_39
    :goto_39
    return-object v3

    .line 1702
    .end local v0    # "NM":I
    .restart local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_3a
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_4e

    .line 1703
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1704
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1694
    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1706
    :cond_4e
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_60

    .line 1707
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1708
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 1710
    :cond_60
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4b

    .line 1711
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1712
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 1719
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    .restart local v0    # "NM":I
    :cond_72
    if-le v0, v8, :cond_aa

    .line 1720
    const/4 v1, 0x0

    :goto_75
    if-ge v1, v0, :cond_aa

    .line 1721
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1722
    .restart local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_8b

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 1726
    :cond_8b
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_99

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 1729
    :cond_99
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a7

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 1720
    :cond_a7
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 1734
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_aa
    const/4 v3, 0x0

    goto :goto_39
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .registers 3
    .param p1, "key"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1968
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_6

    .line 1969
    const/4 v0, 0x0

    .line 1972
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_5
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .registers 6
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1807
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_b

    .line 1808
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1809
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1820
    :cond_a
    :goto_a
    return-void

    .line 1812
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1813
    if-eqz p1, :cond_a

    .line 1814
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1815
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_a
.end method

.method public getHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1070
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 1989
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1860
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1906
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_b

    .line 1907
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1909
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasHeaders()Z
    .registers 2

    .prologue
    .line 1061
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected hasNextButton()Z
    .registers 2

    .prologue
    .line 1985
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public invalidateHeaders()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 1171
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1172
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1174
    :cond_e
    return-void
.end method

.method public isMultiPane()Z
    .registers 2

    .prologue
    .line 1078
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .registers 5
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 1333
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3b

    .line 1334
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subclasses of PreferenceActivity must override isValidFragment(String) to verify that the Fragment class is valid! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has not checked if fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1339
    :cond_3b
    const/4 v0, 0x1

    return v0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .registers 19
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1184
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v9, 0x0

    .line 1186
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 1187
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 1191
    .local v1, "attrs":Landroid/util/AttributeSet;
    :cond_f
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_19

    const/4 v13, 0x2

    if-ne v12, v13, :cond_f

    .line 1195
    :cond_19
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1196
    .local v7, "nodeName":Ljava/lang/String;
    const-string/jumbo v13, "preference-headers"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5d

    .line 1197
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_4d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_4d} :catch_4d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4d} :catch_161
    .catchall {:try_start_1 .. :try_end_4d} :catchall_56

    .line 1315
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_4d
    move-exception v3

    .line 1316
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4e
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Error parsing headers"

    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_56

    .line 1320
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_56
    move-exception v13

    if-eqz v9, :cond_5c

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5c
    throw v13

    .line 1202
    .restart local v1    # "attrs":Landroid/util/AttributeSet;
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_5d
    const/4 v2, 0x0

    .line 1204
    .local v2, "curBundle":Landroid/os/Bundle;
    :try_start_5e
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 1206
    .local v8, "outerDepth":I
    :cond_62
    :goto_62
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1b9

    const/4 v13, 0x3

    if-ne v12, v13, :cond_72

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v8, :cond_1b9

    .line 1207
    :cond_72
    const/4 v13, 0x3

    if-eq v12, v13, :cond_62

    const/4 v13, 0x4

    if-eq v12, v13, :cond_62

    .line 1211
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1212
    const-string v13, "header"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b4

    .line 1213
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1215
    .local v4, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget-object v14, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    invoke-virtual {v13, v1, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 1217
    .local v10, "sa":Landroid/content/res/TypedArray;
    const/4 v13, 0x1

    const/4 v14, -0x1

    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v4, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 1220
    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 1222
    .local v11, "tv":Landroid/util/TypedValue;
    if-eqz v11, :cond_b0

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_b0

    .line 1223
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_16a

    .line 1224
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 1229
    :cond_b0
    :goto_b0
    const/4 v13, 0x3

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 1231
    if-eqz v11, :cond_c4

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_c4

    .line 1232
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_170

    .line 1233
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    .line 1238
    :cond_c4
    :goto_c4
    const/4 v13, 0x5

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 1240
    if-eqz v11, :cond_d8

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_d8

    .line 1241
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_176

    .line 1242
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1247
    :cond_d8
    :goto_d8
    const/4 v13, 0x6

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 1249
    if-eqz v11, :cond_ec

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_ec

    .line 1250
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_17c

    .line 1251
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1256
    :cond_ec
    :goto_ec
    const/4 v13, 0x7

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 1258
    if-eqz v11, :cond_100

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_100

    .line 1259
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_182

    .line 1260
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->titleDescriptionRes:I

    .line 1265
    :cond_100
    :goto_100
    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 1267
    if-eqz v11, :cond_115

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_115

    .line 1268
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_188

    .line 1269
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->summaryDescriptionRes:I

    .line 1274
    :cond_115
    :goto_115
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 1276
    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1278
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 1280
    if-nez v2, :cond_12e

    .line 1281
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1284
    .restart local v2    # "curBundle":Landroid/os/Bundle;
    :cond_12e
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 1286
    .local v5, "innerDepth":I
    :cond_132
    :goto_132
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1a4

    const/4 v13, 0x3

    if-ne v12, v13, :cond_142

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v5, :cond_1a4

    .line 1287
    :cond_142
    const/4 v13, 0x3

    if-eq v12, v13, :cond_132

    const/4 v13, 0x4

    if-eq v12, v13, :cond_132

    .line 1291
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1292
    .local v6, "innerNodeName":Ljava/lang/String;
    const-string v13, "extra"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18d

    .line 1293
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "extra"

    invoke-virtual {v13, v14, v1, v2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1294
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_160
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5e .. :try_end_160} :catch_4d
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_160} :catch_161
    .catchall {:try_start_5e .. :try_end_160} :catchall_56

    goto :goto_132

    .line 1317
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v2    # "curBundle":Landroid/os/Bundle;
    .end local v4    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v5    # "innerDepth":I
    .end local v6    # "innerNodeName":Ljava/lang/String;
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "outerDepth":I
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .end local v11    # "tv":Landroid/util/TypedValue;
    .end local v12    # "type":I
    :catch_161
    move-exception v3

    .line 1318
    .local v3, "e":Ljava/io/IOException;
    :try_start_162
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Error parsing headers"

    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_16a
    .catchall {:try_start_162 .. :try_end_16a} :catchall_56

    .line 1226
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "attrs":Landroid/util/AttributeSet;
    .restart local v2    # "curBundle":Landroid/os/Bundle;
    .restart local v4    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v8    # "outerDepth":I
    .restart local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v11    # "tv":Landroid/util/TypedValue;
    .restart local v12    # "type":I
    :cond_16a
    :try_start_16a
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_b0

    .line 1235
    :cond_170
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_c4

    .line 1244
    :cond_176
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto/16 :goto_d8

    .line 1253
    :cond_17c
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto/16 :goto_ec

    .line 1262
    :cond_182
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->titleDescription:Ljava/lang/CharSequence;

    goto/16 :goto_100

    .line 1271
    :cond_188
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->summaryDescription:Ljava/lang/CharSequence;

    goto :goto_115

    .line 1296
    .restart local v5    # "innerDepth":I
    .restart local v6    # "innerNodeName":Ljava/lang/String;
    :cond_18d
    const-string v13, "intent"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a0

    .line 1297
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v13, v9, v1}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v13

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_132

    .line 1300
    :cond_1a0
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_132

    .line 1304
    .end local v6    # "innerNodeName":Ljava/lang/String;
    :cond_1a4
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v13

    if-lez v13, :cond_1ad

    .line 1305
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1306
    const/4 v2, 0x0

    .line 1309
    :cond_1ad
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_62

    .line 1311
    .end local v4    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v5    # "innerDepth":I
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .end local v11    # "tv":Landroid/util/TypedValue;
    :cond_1b4
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1b7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16a .. :try_end_1b7} :catch_4d
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_1b7} :catch_161
    .catchall {:try_start_16a .. :try_end_1b7} :catchall_56

    goto/16 :goto_62

    .line 1320
    :cond_1b9
    if-eqz v9, :cond_1be

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1322
    :cond_1be
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1449
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1451
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_c

    .line 1452
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 1454
    :cond_c
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1164
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .registers 8
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .prologue
    .line 1522
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1523
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1524
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1525
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1526
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1527
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1528
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1529
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1412
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1414
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0073

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1415
    .local v2, "mLeftPaneWt":I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0074

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1416
    .local v3, "mRightPaneWt":I
    iget-object v5, p0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    if-eqz v5, :cond_52

    iget-boolean v5, p0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    if-eqz v5, :cond_52

    iget-boolean v5, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v5, :cond_52

    sget-boolean v5, Landroid/preference/PreferenceActivity;->mUserUpdateSplit:Z

    if-nez v5, :cond_52

    iget-object v5, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_52

    .line 1417
    const v5, 0x1020386

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1418
    .local v0, "headerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1419
    .local v1, "llp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1420
    .local v4, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    int-to-float v5, v2

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1421
    int-to-float v5, v3

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1422
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1423
    iget-object v5, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1425
    .end local v0    # "headerLayout":Landroid/widget/LinearLayout;
    .end local v1    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_52
    return-void
.end method

.method public onContentChanged()V
    .registers 2

    .prologue
    .line 1458
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 1460
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_a

    .line 1461
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1463
    :cond_a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 34
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 685
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 687
    sget-object v28, Lcom/android/internal/R$styleable;->Theme:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 690
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v28, 0x10b

    const v29, 0x1090099

    :try_start_12
    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceActivityLayoutResID:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_20} :catch_33b

    .line 695
    :goto_20
    const v28, 0x1090095

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemLayoutResID:I

    .line 697
    const/16 v28, 0x10c

    const v29, 0x1090095

    :try_start_2e
    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemLayoutResID:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3c} :catch_346

    .line 702
    :goto_3c
    const/16 v28, 0x143

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    .line 704
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 706
    move-object/from16 v0, p0

    iget v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceActivityLayoutResID:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 708
    const v28, 0x1020387

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/FrameLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 709
    const v28, 0x1020388

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/view/ViewGroup;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 710
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v14

    .line 711
    .local v14, "hidingHeaders":Z
    if-nez v14, :cond_90

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v28

    if-nez v28, :cond_351

    :cond_90
    const/16 v28, 0x1

    :goto_92
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    .line 712
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, ":android:show_fragment"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 713
    .local v16, "initialFragment":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, ":android:show_fragment_args"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 714
    .local v15, "initialArguments":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, ":android:show_fragment_title"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 715
    .local v19, "initialTitle":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, ":android:show_fragment_short_title"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 718
    .local v17, "initialShortTitle":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    move/from16 v28, v0

    if-eqz v28, :cond_355

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v28, v0

    if-nez v28, :cond_355

    .line 719
    const v28, 0x1020416

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_146

    .line 721
    const v28, 0x1020386

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 722
    .local v12, "headerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 724
    .local v23, "llp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout$LayoutParams;

    .line 726
    .local v25, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v22, v0

    .line 727
    .local v22, "leftPanelWeight":F
    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v24, v0

    .line 728
    .local v24, "rightPanelWeight":F
    add-float v27, v22, v24

    .line 731
    .local v27, "weightSum":F
    sget v28, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_146

    .line 732
    sget v28, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 733
    sget v28, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    sub-float v28, v27, v28

    move/from16 v0, v28

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 734
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    .end local v12    # "headerLayout":Landroid/widget/LinearLayout;
    .end local v22    # "leftPanelWeight":F
    .end local v23    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "rightPanelWeight":F
    .end local v25    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v27    # "weightSum":F
    :cond_146
    :goto_146
    if-eqz p1, :cond_383

    .line 750
    const-string v28, ":android:headers"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 751
    .local v13, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    if-eqz v13, :cond_192

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 753
    const-string v28, ":android:cur_header"

    const/16 v29, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 755
    .local v9, "curHeader":I
    if-ltz v9, :cond_192

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v9, v0, :cond_192

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 795
    .end local v9    # "curHeader":I
    .end local v13    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_192
    :goto_192
    if-eqz v16, :cond_3f1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3f1

    .line 797
    const v28, 0x1020386

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 801
    .local v8, "crumbsLayout":Landroid/view/ViewGroup;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 802
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 803
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    .line 805
    if-eqz v19, :cond_1f4

    .line 806
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 807
    .local v20, "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v17, :cond_3ed

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 809
    .local v18, "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_1eb
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 832
    .end local v8    # "crumbsLayout":Landroid/view/ViewGroup;
    .end local v18    # "initialShortTitleStr":Ljava/lang/CharSequence;
    .end local v20    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_1f4
    :goto_1f4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    .line 833
    .local v21, "intent":Landroid/content/Intent;
    const-string v28, "extra_prefs_show_button_bar"

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_2d8

    .line 835
    const v28, 0x10202f1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 837
    const v28, 0x102038a

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 838
    .local v6, "backButton":Landroid/widget/Button;
    new-instance v28, Landroid/preference/PreferenceActivity$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$2;-><init>(Landroid/preference/PreferenceActivity;)V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 844
    const v28, 0x102038b

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    .line 845
    .local v26, "skipButton":Landroid/widget/Button;
    new-instance v28, Landroid/preference/PreferenceActivity$3;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$3;-><init>(Landroid/preference/PreferenceActivity;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 851
    const v28, 0x102038c

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/Button;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v28, v0

    new-instance v29, Landroid/preference/PreferenceActivity$4;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$4;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 860
    const-string v28, "extra_prefs_set_next_text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_29c

    .line 861
    const-string v28, "extra_prefs_set_next_text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 862
    .local v7, "buttonText":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_4b6

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 869
    .end local v7    # "buttonText":Ljava/lang/String;
    :cond_29c
    :goto_29c
    const-string v28, "extra_prefs_set_back_text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2bf

    .line 870
    const-string v28, "extra_prefs_set_back_text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 871
    .restart local v7    # "buttonText":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_4c3

    .line 872
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 878
    .end local v7    # "buttonText":Ljava/lang/String;
    :cond_2bf
    :goto_2bf
    const-string v28, "extra_prefs_show_skip"

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_2d8

    .line 879
    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 884
    .end local v6    # "backButton":Landroid/widget/Button;
    .end local v26    # "skipButton":Landroid/widget/Button;
    :cond_2d8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    move/from16 v28, v0

    if-eqz v28, :cond_33a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v28, v0

    if-nez v28, :cond_33a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_33a

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    move-object/from16 v28, v0

    if-nez v28, :cond_307

    .line 887
    new-instance v28, Landroid/preference/PreferenceActivity$5;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$5;-><init>(Landroid/preference/PreferenceActivity;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    .line 908
    :cond_307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v28, v0

    new-instance v29, Landroid/preference/PreferenceActivity$6;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$6;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v28, v0

    new-instance v29, Landroid/preference/PreferenceActivity$7;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$7;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1055
    :cond_33a
    return-void

    .line 691
    .end local v14    # "hidingHeaders":Z
    .end local v15    # "initialArguments":Landroid/os/Bundle;
    .end local v16    # "initialFragment":Ljava/lang/String;
    .end local v17    # "initialShortTitle":I
    .end local v19    # "initialTitle":I
    .end local v21    # "intent":Landroid/content/Intent;
    :catch_33b
    move-exception v10

    .line 692
    .local v10, "e":Ljava/lang/Exception;
    const-string v28, "PreferenceActivity"

    const-string/jumbo v29, "mPreferenceActivityLayoutResID not found."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 698
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_346
    move-exception v10

    .line 699
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v28, "PreferenceActivity"

    const-string/jumbo v29, "mPreferenceHeaderItemLayoutResID not found."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 711
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v14    # "hidingHeaders":Z
    :cond_351
    const/16 v28, 0x0

    goto/16 :goto_92

    .line 740
    .restart local v15    # "initialArguments":Landroid/os/Bundle;
    .restart local v16    # "initialFragment":Ljava/lang/String;
    .restart local v17    # "initialShortTitle":I
    .restart local v19    # "initialTitle":I
    :cond_355
    const v28, 0x1020416

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_146

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 743
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    goto/16 :goto_146

    .line 761
    :cond_383
    if-eqz v16, :cond_3b6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3b6

    .line 765
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 766
    if-eqz v19, :cond_192

    .line 767
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 768
    .restart local v20    # "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v17, :cond_3b3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 770
    .restart local v18    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_3a8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_192

    .line 768
    .end local v18    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :cond_3b3
    const/16 v18, 0x0

    goto :goto_3a8

    .line 775
    .end local v20    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_3b6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_192

    .line 781
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v28, v0

    if-nez v28, :cond_192

    .line 782
    if-nez v16, :cond_3e4

    .line 783
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v11

    .line 784
    .local v11, "h":Landroid/preference/PreferenceActivity$Header;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto/16 :goto_192

    .line 786
    .end local v11    # "h":Landroid/preference/PreferenceActivity$Header;
    :cond_3e4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_192

    .line 807
    .restart local v8    # "crumbsLayout":Landroid/view/ViewGroup;
    .restart local v20    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_3ed
    const/16 v18, 0x0

    goto/16 :goto_1eb

    .line 811
    .end local v8    # "crumbsLayout":Landroid/view/ViewGroup;
    .end local v20    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_3f1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_458

    .line 812
    new-instance v28, Landroid/preference/PreferenceActivity$HeaderAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemLayoutResID:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v31, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 813
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v28, v0

    if-nez v28, :cond_1f4

    .line 815
    invoke-virtual/range {p0 .. p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v28, v0

    if-eqz v28, :cond_44b

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 819
    :cond_44b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1f4

    .line 824
    :cond_458
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4b2

    const v28, 0x1090115

    :goto_463
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 825
    const v28, 0x1020387

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/FrameLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 826
    const v28, 0x1020389

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/view/ViewGroup;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 827
    new-instance v28, Landroid/preference/PreferenceManager;

    const/16 v29, 0x64

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    goto/16 :goto_1f4

    .line 824
    :cond_4b2
    const v28, 0x109009a

    goto :goto_463

    .line 866
    .restart local v6    # "backButton":Landroid/widget/Button;
    .restart local v7    # "buttonText":Ljava/lang/String;
    .restart local v21    # "intent":Landroid/content/Intent;
    .restart local v26    # "skipButton":Landroid/widget/Button;
    :cond_4b6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_29c

    .line 875
    :cond_4c3
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2bf
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 1366
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_1a

    .line 1368
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1369
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    .line 1372
    :cond_1a
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1373
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1374
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 1376
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_32

    .line 1377
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 1379
    :cond_32
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .registers 5

    .prologue
    .line 1130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 1131
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1132
    .local v0, "h":Landroid/preference/PreferenceActivity$Header;
    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 1133
    return-object v0

    .line 1130
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1136
    .end local v0    # "h":Landroid/preference/PreferenceActivity$Header;
    :cond_19
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must have at least one header with a fragment"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onGetNewHeader()Landroid/preference/PreferenceActivity$Header;
    .registers 2

    .prologue
    .line 1146
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .registers 10
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 1488
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 1489
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1c

    .line 1490
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1491
    .local v5, "titleRes":I
    iget v6, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1492
    .local v6, "shortTitleRes":I
    if-nez v5, :cond_11

    .line 1493
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 1494
    const/4 v6, 0x0

    .line 1496
    :cond_11
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1504
    .end local v5    # "titleRes":I
    .end local v6    # "shortTitleRes":I
    :cond_1b
    :goto_1b
    return-void

    .line 1499
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_1b

    .line 1501
    :cond_20
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1b

    .line 1502
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1b
.end method

.method public onIsHidingHeaders()Z
    .registers 4

    .prologue
    .line 1119
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .registers 4

    .prologue
    .line 1087
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1089
    .local v0, "preferMultiPane":Z
    if-nez v0, :cond_11

    iget-boolean v1, p0, Landroid/preference/PreferenceActivity;->mIsMultiPane:Z

    if-eqz v1, :cond_13

    :cond_11
    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1467
    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1476
    :cond_6
    :goto_6
    return-void

    .line 1470
    :cond_7
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1472
    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_6

    .line 1473
    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1474
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .end local v0    # "item":Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_6
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1977
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_9

    .line 1978
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 1980
    :cond_9
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .registers 10
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 1824
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1826
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1952
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1430
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v2, :cond_18

    .line 1431
    const-string v2, ":android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1432
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_18

    .line 1433
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1434
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_18

    .line 1435
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1436
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1445
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :goto_17
    return-void

    .line 1444
    :cond_18
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_17
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1383
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1385
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_25

    .line 1386
    const-string v3, ":android:headers"

    iget-object v4, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1387
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_25

    .line 1388
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1389
    .local v1, "index":I
    if-ltz v1, :cond_25

    .line 1390
    const-string v3, ":android:cur_header"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1395
    .end local v1    # "index":I
    :cond_25
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_3c

    .line 1396
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 1397
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_3c

    .line 1398
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1399
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 1400
    const-string v3, ":android:preferences"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1403
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_3c
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 1355
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1357
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_c

    .line 1358
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    .line 1360
    :cond_c
    return-void
.end method

.method protected setActionBarShadow(Z)V
    .registers 9
    .param p1, "use"    # Z

    .prologue
    const/4 v6, 0x0

    .line 660
    iget-boolean v4, p0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    if-nez v4, :cond_6

    .line 678
    :cond_5
    :goto_5
    return-void

    .line 662
    :cond_6
    const v4, 0x1020415

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 663
    .local v3, "shadowLayout":Landroid/view/ViewGroup;
    const v4, 0x1020002

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 665
    .local v1, "rootLayout":Landroid/widget/FrameLayout;
    if-nez v3, :cond_35

    .line 666
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 667
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090102

    invoke-virtual {v0, v4, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 668
    .local v2, "shadow":Landroid/view/View;
    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 669
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 673
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "shadow":Landroid/view/View;
    :cond_35
    if-eqz p1, :cond_3b

    .line 674
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 676
    :cond_3b
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method public setEnableSplitBar(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 1108
    iput-boolean p1, p0, Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z

    .line 1109
    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1347
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1348
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1351
    return-void
.end method

.method protected setMultiPane(Z)V
    .registers 2
    .param p1, "isMultiPane"    # Z

    .prologue
    .line 1101
    iput-boolean p1, p0, Landroid/preference/PreferenceActivity;->mIsMultiPane:Z

    .line 1102
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1616
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-eqz v0, :cond_9

    .line 1617
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1619
    :cond_9
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .registers 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1883
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1885
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-eqz p1, :cond_1d

    .line 1886
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1887
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1889
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1d

    .line 1890
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1893
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1d
    return-void
.end method

.method setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V
    .registers 5
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 1622
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1623
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1624
    .local v0, "index":I
    if-ltz v0, :cond_27

    .line 1625
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 1626
    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/preference/PreferenceActivity$HeaderAdapter;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/preference/PreferenceActivity$HeaderAdapter;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->setSelectedId(I)V

    .line 1630
    :cond_23
    :goto_23
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V

    .line 1631
    return-void

    .line 1628
    :cond_27
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->clearChoices()V

    goto :goto_23
.end method

.method showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V
    .registers 5
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 1634
    if-eqz p1, :cond_26

    .line 1635
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1636
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1637
    :cond_14
    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1638
    :cond_1a
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1642
    .end local v0    # "title":Ljava/lang/CharSequence;
    :goto_25
    return-void

    .line 1640
    :cond_26
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_25
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 9
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 1574
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v3, :cond_44

    .line 1575
    const v3, 0x1020016

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1578
    .local v1, "crumbs":Landroid/view/View;
    :try_start_e
    check-cast v1, Landroid/app/FragmentBreadCrumbs;

    .end local v1    # "crumbs":Landroid/view/View;
    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_12} :catch_1c

    .line 1583
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v3, :cond_21

    .line 1584
    if-eqz p1, :cond_1b

    .line 1585
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1605
    :cond_1b
    :goto_1b
    return-void

    .line 1579
    :catch_1c
    move-exception v2

    .line 1580
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 1589
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_21
    iget-boolean v3, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v3, :cond_39

    .line 1590
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1592
    const v3, 0x10202fa

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1593
    .local v0, "bcSection":Landroid/view/View;
    if-eqz v0, :cond_36

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1594
    :cond_36
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1596
    .end local v0    # "bcSection":Landroid/view/View;
    :cond_39
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1597
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 1599
    :cond_44
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_50

    .line 1600
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 1602
    :cond_50
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1603
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, v5, v5, v5}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_1b
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .registers 5
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1745
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1746
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x1020389

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1747
    if-eqz p2, :cond_1e

    .line 1748
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1749
    const-string v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1753
    :goto_1a
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1754
    return-void

    .line 1751
    :cond_1e
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_1a
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .registers 16
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 1777
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_f

    .line 1778
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1795
    :goto_e
    return-void

    .line 1780
    :cond_f
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v7

    .line 1781
    .local v7, "f":Landroid/app/Fragment;
    if-eqz p5, :cond_18

    .line 1782
    invoke-virtual {v7, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1784
    :cond_18
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 1785
    .local v8, "transaction":Landroid/app/FragmentTransaction;
    const v0, 0x1020389

    invoke-virtual {v8, v0, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1786
    if-eqz p3, :cond_39

    .line 1787
    invoke-virtual {v8, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1791
    :cond_2b
    :goto_2b
    const/16 v0, 0x1001

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1792
    const-string v0, ":android:prefs"

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1793
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_e

    .line 1788
    :cond_39
    if-eqz p4, :cond_2b

    .line 1789
    invoke-virtual {v8, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_2b
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .registers 12
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 1538
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1539
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .registers 8
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .prologue
    .line 1560
    invoke-virtual {p0, p1, p2, p5, p6}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1561
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_a

    .line 1562
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1566
    :goto_9
    return-void

    .line 1564
    :cond_a
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .registers 6
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 1677
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-ne v1, p1, :cond_f

    .line 1680
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ":android:prefs"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1690
    :goto_e
    return-void

    .line 1683
    :cond_f
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v1, :cond_1b

    .line 1684
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t switch to header that has no fragment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1686
    :cond_1b
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sub-int v0, v1, v2

    .line 1687
    .local v0, "direction":I
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2, v0}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1688
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_e
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1666
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1667
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1668
    return-void
.end method
