.class Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
.super Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;
.source "PeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerAdapter"
.end annotation


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mTabPagerAdapterSearchMode:Z

.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 1

    .prologue
    .line 2249
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;-><init>()V

    .line 2245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 2250
    invoke-virtual {p1}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 2251
    return-void
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 2315
    iget-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    if-eqz v2, :cond_0

    .line 2316
    if-nez p1, :cond_d

    .line 2317
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v2

    .line 2362
    :goto_0
    return-object v2

    .line 2321
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$1600(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2322
    if-ne p1, v3, :cond_1

    .line 2323
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v2

    goto :goto_0

    .line 2324
    :cond_1
    if-ne p1, v4, :cond_2

    .line 2325
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$1900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v2

    goto :goto_0

    .line 2326
    :cond_2
    if-nez p1, :cond_d

    .line 2327
    const-string v2, "feature_scroll_fragment"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2328
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2300(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    move-result-object v2

    if-nez v2, :cond_3

    .line 2329
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    new-instance v3, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;-><init>()V

    # setter for: Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->access$2302(Lcom/android/contacts/activities/PeopleActivity;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 2331
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2300(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    move-result-object v2

    goto :goto_0

    .line 2334
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    move-result-object v2

    if-nez v2, :cond_5

    .line 2335
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    new-instance v3, Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    invoke-direct {v3}, Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;-><init>()V

    # setter for: Lcom/android/contacts/activities/PeopleActivity;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;
    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->access$2102(Lcom/android/contacts/activities/PeopleActivity;Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;)Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    .line 2337
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    move-result-object v2

    goto :goto_0

    .line 2341
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v2

    if-ne p1, v2, :cond_7

    .line 2342
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactTileListFragment;

    move-result-object v2

    goto :goto_0

    .line 2343
    :cond_7
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v2

    if-ne p1, v2, :cond_8

    .line 2344
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v2

    goto :goto_0

    .line 2345
    :cond_8
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v2

    if-ne p1, v2, :cond_9

    .line 2346
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$1900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v2

    goto/16 :goto_0

    .line 2347
    :cond_9
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v2

    if-ne p1, v2, :cond_d

    .line 2348
    const-string v2, "feature_scroll_fragment"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2349
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2300(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    move-result-object v2

    if-nez v2, :cond_a

    .line 2350
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    new-instance v3, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;-><init>()V

    # setter for: Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->access$2302(Lcom/android/contacts/activities/PeopleActivity;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 2351
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 2352
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const-string v0, "DialpadFragment"

    .line 2353
    .local v0, "DIALER_TAG":Ljava/lang/String;
    const v2, 0x7f0903b4

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$2300(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    move-result-object v3

    const-string v4, "DialpadFragment"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2354
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2356
    .end local v0    # "DIALER_TAG":Ljava/lang/String;
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_a
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2300(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    move-result-object v2

    goto/16 :goto_0

    .line 2359
    :cond_b
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    move-result-object v2

    if-nez v2, :cond_c

    .line 2360
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    new-instance v3, Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    invoke-direct {v3}, Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;-><init>()V

    # setter for: Lcom/android/contacts/activities/PeopleActivity;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;
    invoke-static {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->access$2102(Lcom/android/contacts/activities/PeopleActivity;Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;)Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    .line 2362
    :cond_c
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    move-result-object v2

    goto/16 :goto_0

    .line 2367
    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 2383
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 2384
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 2386
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2387
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 2392
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 2394
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2396
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2267
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabStateLength()I

    move-result v0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 2273
    iget-boolean v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    if-eqz v3, :cond_1

    .line 2274
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 2307
    :cond_0
    :goto_0
    return v0

    .line 2279
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$1600(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2280
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v3

    if-ne p1, v3, :cond_2

    move v0, v1

    .line 2281
    goto :goto_0

    .line 2283
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$1900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v1

    if-ne p1, v1, :cond_3

    move v0, v2

    .line 2284
    goto :goto_0

    .line 2286
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 2307
    :cond_4
    const/4 v0, -0x2

    goto :goto_0

    .line 2290
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$2200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactTileListFragment;

    move-result-object v3

    if-ne p1, v3, :cond_6

    .line 2291
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    goto :goto_0

    .line 2293
    :cond_6
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v1

    if-ne p1, v1, :cond_7

    .line 2294
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    goto :goto_0

    .line 2296
    :cond_7
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$1900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v1

    if-ne p1, v1, :cond_8

    .line 2297
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    goto :goto_0

    .line 2299
    :cond_8
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactsFragment:Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/ContactsFragment;

    move-result-object v1

    if-ne p1, v1, :cond_9

    .line 2300
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    goto :goto_0

    .line 2302
    :cond_9
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2300(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 2303
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 2372
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 2373
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 2375
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 2376
    .local v0, "f":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2378
    return-object v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 2254
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 2400
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2410
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 2405
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSearchMode(Z)V
    .locals 1
    .param p1, "searchMode"    # Z

    .prologue
    .line 2258
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    if-ne p1, v0, :cond_0

    .line 2263
    :goto_0
    return-void

    .line 2261
    :cond_0
    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->mTabPagerAdapterSearchMode:Z

    .line 2262
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 2312
    return-void
.end method
