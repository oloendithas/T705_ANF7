.class Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerListener"
.end annotation


# instance fields
.field private mCurrentPosition:I

.field private mNextPosition:I

.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2135
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2136
    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->mCurrentPosition:I

    .line 2137
    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->mNextPosition:I

    .line 2135
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2150
    packed-switch p1, :pswitch_data_0

    .line 2183
    :goto_0
    return-void

    .line 2152
    :pswitch_0
    iget v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->mNextPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1300(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->mNextPosition:I

    .line 2161
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mDuringSwipe:Z

    .line 2162
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mUserTabClick:Z

    .line 2164
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->mCurrentPosition:I

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->sendFragmentVisibilityChange(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/contacts/activities/PeopleActivity;->access$1400(Lcom/android/contacts/activities/PeopleActivity;IZ)V

    .line 2165
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->mNextPosition:I

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->sendFragmentVisibilityChange(IZ)V
    invoke-static {v0, v1, v3}, Lcom/android/contacts/activities/PeopleActivity;->access$1400(Lcom/android/contacts/activities/PeopleActivity;IZ)V

    .line 2167
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2169
    iget v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->mNextPosition:I

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->mCurrentPosition:I

    goto :goto_0

    .line 2173
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iput-boolean v3, v0, Lcom/android/contacts/activities/PeopleActivity;->mDuringSwipe:Z

    .line 2174
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mUserTabClick:Z

    goto :goto_0

    .line 2177
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iput-boolean v3, v0, Lcom/android/contacts/activities/PeopleActivity;->mDuringSwipe:Z

    .line 2178
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/PeopleActivity;->mUserTabClick:Z

    goto :goto_0

    .line 2150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 2187
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2193
    const-string v3, "PeopleActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageSelected, position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$1500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2199
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->getTabState(I)I

    move-result v0

    .line 2201
    .local v0, "selectedTab":I
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$1600(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2202
    if-ne v0, v1, :cond_5

    .line 2203
    const/4 v0, 0x1

    .line 2210
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$600(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsKNOXMode:Z
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$700(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2211
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 2213
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 2214
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V
    invoke-static {v3, v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1700(Lcom/android/contacts/activities/PeopleActivity;I)V

    .line 2217
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$1600(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2218
    if-ne v0, v1, :cond_3

    .line 2219
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$1900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z
    invoke-static {v4}, Lcom/android/contacts/activities/PeopleActivity;->access$1800(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v4

    if-nez v4, :cond_7

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    .line 2228
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2230
    .end local v0    # "selectedTab":I
    :cond_4
    return-void

    .line 2204
    .restart local v0    # "selectedTab":I
    :cond_5
    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    .line 2205
    const/4 v0, 0x2

    goto :goto_0

    .line 2206
    :cond_6
    if-nez v0, :cond_0

    .line 2207
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    move v1, v2

    .line 2219
    goto :goto_1

    .line 2223
    :cond_8
    if-ne v0, v1, :cond_3

    .line 2224
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$1900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z
    invoke-static {v4}, Lcom/android/contacts/activities/PeopleActivity;->access$1800(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v4

    if-nez v4, :cond_9

    :goto_3
    invoke-virtual {v3, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_3
.end method

.method public setCurrentPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    .line 2142
    return-void
.end method
