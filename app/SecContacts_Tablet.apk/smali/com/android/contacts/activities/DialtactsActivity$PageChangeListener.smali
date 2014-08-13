.class Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeListener"
.end annotation


# instance fields
.field private mCurrentPosition:I

.field private mNextPosition:I

.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 417
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    .line 423
    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/DialtactsActivity$1;

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 482
    packed-switch p1, :pswitch_data_0

    .line 527
    :goto_0
    return-void

    .line 484
    :pswitch_0
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 491
    const-string v0, "DialtactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next position is not specified correctly. Use current tab ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    .line 497
    :cond_0
    const-string v0, "DialtactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageScrollStateChanged() with SCROLL_STATE_IDLE. mCurrentPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNextPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 503
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 505
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V
    invoke-static {v3, v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$500(Lcom/android/contacts/activities/DialtactsActivity;Z)V

    .line 506
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget v3, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V
    invoke-static {v0, v3, v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$600(Lcom/android/contacts/activities/DialtactsActivity;IZ)V

    .line 507
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget v2, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V
    invoke-static {v0, v2, v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$600(Lcom/android/contacts/activities/DialtactsActivity;IZ)V

    .line 509
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 511
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 505
    goto :goto_1

    .line 515
    :pswitch_1
    const-string v0, "DialtactsActivity"

    const-string v3, "onPageScrollStateChanged() with SCROLL_STATE_DRAGGING"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v1, v0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 517
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    goto/16 :goto_0

    .line 520
    :pswitch_2
    const-string v0, "DialtactsActivity"

    const-string v3, "onPageScrollStateChanged() with SCROLL_STATE_SETTLING"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v1, v0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 522
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    goto/16 :goto_0

    .line 482
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
    .line 428
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 432
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageSelected: position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDuringSwipe : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-boolean v3, v3, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 435
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$200(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-boolean v1, v1, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 444
    :cond_0
    iget v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    if-ne v1, p1, :cond_1

    .line 445
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous position and next position became same ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_1
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-nez v1, :cond_2

    const-string v1, "phone_icon_to_keypad"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-boolean v1, v1, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v1, :cond_2

    .line 448
    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 449
    const-string v1, "phone_icon_to_keypad"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.android.phone.action.RECENT_CALLS"

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->intent_action:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$300(Lcom/android/contacts/activities/DialtactsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 451
    const/4 p1, 0x0

    .line 454
    :cond_2
    if-eqz v0, :cond_3

    .line 455
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 457
    :cond_3
    iput p1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    .line 459
    sget-object v1, Lcom/android/contacts/activities/DialtactsActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/contacts/activities/DialtactsActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 460
    sget-object v1, Lcom/android/contacts/activities/DialtactsActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 463
    :cond_4
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-nez v1, :cond_6

    const-string v1, "phone_icon_to_keypad"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-boolean v1, v1, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v1, :cond_6

    .line 464
    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 465
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$400(Lcom/android/contacts/activities/DialtactsActivity;Landroid/content/Intent;)V

    .line 470
    :cond_5
    :goto_0
    return-void

    .line 467
    :cond_6
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-boolean v1, v1, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v1, :cond_5

    .line 468
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$400(Lcom/android/contacts/activities/DialtactsActivity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setCurrentPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 473
    iput p1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    .line 474
    return-void
.end method
