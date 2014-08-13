.class Lcom/android/contacts/activities/DialtactsActivity$1;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 822
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 11
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 566
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v3

    .line 568
    .local v3, "selectedTabPos":I
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$1100(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$1200(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 569
    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->access$1300()I

    move-result v3

    .line 570
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # setter for: Lcom/android/contacts/activities/DialtactsActivity;->isUpdateTabPosition:Z
    invoke-static {v4, v6}, Lcom/android/contacts/activities/DialtactsActivity;->access$1102(Lcom/android/contacts/activities/DialtactsActivity;Z)Z

    .line 573
    :cond_0
    const-string v4, "feature_support_call_log_search"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v4

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    if-eq v4, v7, :cond_1

    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v4

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$1500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 576
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$1500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->clearCustomSearchResult()V

    .line 700
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$1200(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 701
    if-eq v3, v9, :cond_2

    if-eq v3, v5, :cond_2

    if-ne v3, v10, :cond_6

    .line 704
    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const-class v6, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 705
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "from_phone_app"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 706
    const-string v4, "selected_tab_pos"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 724
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 813
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 728
    :cond_3
    if-eq v3, v9, :cond_4

    sget-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v4, :cond_6

    const-string v4, "feature_easy_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-ne v3, v10, :cond_6

    .line 730
    :cond_4
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const-class v6, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 731
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x14000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 734
    const-string v4, "from_phone_app"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 737
    sget-boolean v4, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v4, :cond_5

    .line 738
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$1600(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v4

    if-ne v4, v5, :cond_5

    .line 739
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/contacts/activities/DialtactsActivity$1$1;

    invoke-direct {v5, p0}, Lcom/android/contacts/activities/DialtactsActivity$1$1;-><init>(Lcom/android/contacts/activities/DialtactsActivity$1;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 748
    :cond_5
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # setter for: Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I
    invoke-static {v4, v9}, Lcom/android/contacts/activities/DialtactsActivity;->access$1702(Lcom/android/contacts/activities/DialtactsActivity;I)I

    .line 750
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 761
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$1200(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 762
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-boolean v4, v4, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v4, :cond_9

    .line 764
    const-string v4, "DialtactsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tab select. from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
    invoke-static {v8}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v4

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    if-eq v4, v7, :cond_7

    .line 768
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V
    invoke-static {v4, v7, v5}, Lcom/android/contacts/activities/DialtactsActivity;->access$600(Lcom/android/contacts/activities/DialtactsActivity;IZ)V

    .line 770
    :cond_7
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$200(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 771
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v4

    if-nez v4, :cond_d

    move v4, v5

    :goto_1
    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V
    invoke-static {v7, v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$500(Lcom/android/contacts/activities/DialtactsActivity;Z)V

    .line 773
    :cond_8
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v5, v4, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 776
    :cond_9
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v4

    if-ne v4, v10, :cond_a

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v4

    if-ne v4, v5, :cond_a

    const-string v4, "feature_folder_type"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 778
    sput-boolean v5, Lcom/android/contacts/activities/DialtactsActivity;->mIsTabChange:Z

    .line 781
    :cond_a
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    if-eq v4, v7, :cond_b

    .line 782
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    invoke-virtual {v4, v7, v6}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItem(IZ)V

    .line 785
    :cond_b
    const-string v4, "feature_scroll_fragment"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 786
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v0

    .line 787
    .local v0, "currentPosition":I
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 788
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$1400(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->setCurrentPosition(I)V

    .line 790
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v4, 0x4

    if-ge v1, v4, :cond_f

    .line 791
    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    if-ne v1, v0, :cond_e

    move v4, v5

    :goto_3
    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V
    invoke-static {v7, v1, v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$600(Lcom/android/contacts/activities/DialtactsActivity;IZ)V

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "currentPosition":I
    .end local v1    # "i":I
    :cond_d
    move v4, v6

    .line 771
    goto :goto_1

    .restart local v0    # "currentPosition":I
    .restart local v1    # "i":I
    :cond_e
    move v4, v6

    .line 791
    goto :goto_3

    .line 797
    .end local v0    # "currentPosition":I
    .end local v1    # "i":I
    :cond_f
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v4

    if-nez v4, :cond_10

    .line 801
    if-eq v3, v9, :cond_10

    .line 802
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # setter for: Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I
    invoke-static {v4, v3}, Lcom/android/contacts/activities/DialtactsActivity;->access$1702(Lcom/android/contacts/activities/DialtactsActivity;I)I

    .line 805
    :cond_10
    # setter for: Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I
    invoke-static {v3}, Lcom/android/contacts/activities/DialtactsActivity;->access$1302(I)I

    .line 807
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$1200(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 808
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->checkCallLogFavoriteList()V
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$1800(Lcom/android/contacts/activities/DialtactsActivity;)V

    .line 811
    :cond_11
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mEnhancedAssistantMenu:Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$2000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mEAMReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/android/contacts/activities/DialtactsActivity;->access$1900(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    .line 812
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v4}, Lcom/android/contacts/activities/DialtactsActivity;->registerEamReceiver()V

    goto/16 :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 561
    return-void
.end method
