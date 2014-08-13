.class Lcom/android/contacts/activities/PeopleActivity$8;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PeopleActivity;->showAddaContactTutorialPopup(Landroid/view/View;)V
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
    .line 5569
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iput-object p2, p0, Lcom/android/contacts/activities/PeopleActivity$8;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 5572
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$4400(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v9}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v9}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 5574
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    new-array v10, v14, [I

    # setter for: Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I
    invoke-static {v9, v10}, Lcom/android/contacts/activities/PeopleActivity;->access$4402(Lcom/android/contacts/activities/PeopleActivity;[I)[I

    .line 5575
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->val$view:Landroid/view/View;

    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I
    invoke-static {v10}, Lcom/android/contacts/activities/PeopleActivity;->access$4400(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5576
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5577
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Lcom/android/contacts/activities/PeopleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 5578
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5579
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v9}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    .line 5580
    .local v0, "actionBarheight":I
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0901e0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 5581
    .local v2, "mainView":Landroid/view/View;
    if-nez v2, :cond_2

    .line 5582
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$4500(Lcom/android/contacts/activities/PeopleActivity;)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_1

    .line 5611
    .end local v0    # "actionBarheight":I
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "mainView":Landroid/view/View;
    .end local v6    # "wm":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return-void

    .line 5585
    .restart local v0    # "actionBarheight":I
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "mainView":Landroid/view/View;
    .restart local v6    # "wm":Landroid/view/WindowManager;
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$4500(Lcom/android/contacts/activities/PeopleActivity;)Landroid/view/View;

    move-result-object v2

    .line 5586
    :cond_2
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const v10, 0x7f0903b3

    invoke-virtual {v9, v10}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 5587
    .local v3, "noContactsView":Landroid/view/View;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3

    .line 5589
    move-object v2, v3

    .line 5590
    :cond_3
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v10, 0x4

    new-array v10, v10, [I

    # setter for: Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonRect:[I
    invoke-static {v9, v10}, Lcom/android/contacts/activities/PeopleActivity;->access$4602(Lcom/android/contacts/activities/PeopleActivity;[I)[I

    .line 5591
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonRect:[I
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$4600(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I
    invoke-static {v10}, Lcom/android/contacts/activities/PeopleActivity;->access$4400(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v10

    aget v10, v10, v12

    aput v10, v9, v12

    .line 5592
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonRect:[I
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$4600(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I
    invoke-static {v10}, Lcom/android/contacts/activities/PeopleActivity;->access$4400(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v10

    aget v10, v10, v12

    iget-object v11, p0, Lcom/android/contacts/activities/PeopleActivity$8;->val$view:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    aput v10, v9, v14

    .line 5594
    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v9, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int v4, v9, v10

    .line 5596
    .local v4, "notiBarHeight":I
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->val$view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I
    invoke-static {v10}, Lcom/android/contacts/activities/PeopleActivity;->access$4400(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v10

    aget v10, v10, v13

    add-int v8, v9, v10

    .line 5597
    .local v8, "yOffset":I
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->val$view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I
    invoke-static {v10}, Lcom/android/contacts/activities/PeopleActivity;->access$4400(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v10

    aget v10, v10, v12

    add-int v7, v9, v10

    .line 5598
    .local v7, "xOffset":I
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v9}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0024

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    div-int/lit8 v5, v9, 0x2

    .line 5600
    .local v5, "popupRadius":I
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$4400(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v9

    sub-int v10, v8, v5

    sub-int/2addr v10, v4

    aput v10, v9, v13

    .line 5603
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$4400(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v9

    sub-int v10, v7, v5

    aput v10, v9, v12

    .line 5605
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonRect:[I
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$4600(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I
    invoke-static {v10}, Lcom/android/contacts/activities/PeopleActivity;->access$4400(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v10

    aget v10, v10, v13

    aput v10, v9, v13

    .line 5606
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonRect:[I
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$4600(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v9

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mCreateButtonLoc:[I
    invoke-static {v11}, Lcom/android/contacts/activities/PeopleActivity;->access$4400(Lcom/android/contacts/activities/PeopleActivity;)[I

    move-result-object v11

    aget v11, v11, v13

    iget-object v12, p0, Lcom/android/contacts/activities/PeopleActivity$8;->val$view:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    aput v11, v9, v10

    .line 5607
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->val$view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 5608
    iget-object v9, p0, Lcom/android/contacts/activities/PeopleActivity$8;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->showAddaContactTutorialPopup()V
    invoke-static {v9}, Lcom/android/contacts/activities/PeopleActivity;->access$4700(Lcom/android/contacts/activities/PeopleActivity;)V

    goto/16 :goto_0
.end method
