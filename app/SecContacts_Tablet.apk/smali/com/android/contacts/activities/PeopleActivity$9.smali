.class Lcom/android/contacts/activities/PeopleActivity$9;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PeopleActivity;->showSpeedDialTutorialPopupTwoPanes(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 5618
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iput-object p2, p0, Lcom/android/contacts/activities/PeopleActivity$9;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 15

    .prologue
    const v14, 0x7f0c0024

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 5621
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$4800(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v8}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v8}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5623
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    new-array v9, v13, [I

    # setter for: Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I
    invoke-static {v8, v9}, Lcom/android/contacts/activities/PeopleActivity;->access$4802(Lcom/android/contacts/activities/PeopleActivity;[I)[I

    .line 5624
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5625
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Lcom/android/contacts/activities/PeopleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 5626
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5627
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v8}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    .line 5628
    .local v0, "actionBarheight":I
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0901e0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 5629
    .local v2, "mainView":Landroid/view/View;
    if-nez v2, :cond_2

    .line 5630
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$4500(Lcom/android/contacts/activities/PeopleActivity;)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_1

    .line 5664
    .end local v0    # "actionBarheight":I
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "mainView":Landroid/view/View;
    .end local v5    # "wm":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return-void

    .line 5633
    .restart local v0    # "actionBarheight":I
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "mainView":Landroid/view/View;
    .restart local v5    # "wm":Landroid/view/WindowManager;
    :cond_1
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$4500(Lcom/android/contacts/activities/PeopleActivity;)Landroid/view/View;

    move-result-object v2

    .line 5634
    :cond_2
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const v9, 0x7f0903b9

    invoke-virtual {v8, v9}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 5635
    .local v3, "noContactsView":Landroid/view/View;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 5637
    move-object v2, v3

    .line 5639
    :cond_3
    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v8, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int v4, v8, v9

    .line 5641
    .local v4, "notiBarHeight":I
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$4800(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v8

    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity$9;->val$view:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    aput v9, v8, v12

    .line 5642
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$4800(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v8

    aput v4, v8, v11

    .line 5643
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v9, 0x4

    new-array v9, v9, [I

    # setter for: Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I
    invoke-static {v8, v9}, Lcom/android/contacts/activities/PeopleActivity;->access$4902(Lcom/android/contacts/activities/PeopleActivity;[I)[I

    .line 5644
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$4900(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$4800(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v9

    aget v9, v9, v12

    aput v9, v8, v12

    .line 5645
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$4900(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v8

    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v9, v8, v13

    .line 5646
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->val$view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$4800(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v9

    aget v9, v9, v11

    add-int v7, v8, v9

    .line 5647
    .local v7, "yOffset":I
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->val$view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$4800(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v9

    aget v9, v9, v12

    add-int v6, v8, v9

    .line 5649
    .local v6, "xOffset":I
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$4800(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v9}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v7, v9

    sub-int/2addr v9, v4

    aput v9, v8, v11

    .line 5653
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$4800(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v9}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v6, v9

    aput v9, v8, v12

    .line 5656
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$4900(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$4800(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v9

    aget v9, v9, v11

    aput v9, v8, v11

    .line 5657
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionMenuRect:[I
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$4900(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v8

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionMenuLoc:[I
    invoke-static {v10}, Lcom/android/contacts/activities/PeopleActivity;->access$4800(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v10

    aget v10, v10, v11

    iget-object v11, p0, Lcom/android/contacts/activities/PeopleActivity$9;->val$view:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v10, v11

    aput v10, v8, v9

    .line 5659
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mMenuCheck:Z
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$5000(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 5660
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->showSpeedDialTutorialPopupTwoPanes()V
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$5100(Lcom/android/contacts/activities/PeopleActivity;)V

    goto/16 :goto_0

    .line 5662
    :cond_4
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity$9;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->showSpeedDialTutorialPopup()V
    invoke-static {v8}, Lcom/android/contacts/activities/PeopleActivity;->access$5200(Lcom/android/contacts/activities/PeopleActivity;)V

    goto/16 :goto_0
.end method
