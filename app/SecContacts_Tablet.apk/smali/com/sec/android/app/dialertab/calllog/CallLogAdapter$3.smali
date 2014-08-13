.class Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 566
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 567
    const-string v8, "feature_tablet_selection_mode"

    invoke-static {v8}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 568
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v8

    if-nez v8, :cond_0

    .line 569
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v8, 0x0

    sput-boolean v8, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delete:Z

    .line 570
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "0012"

    invoke-static {v8, v9}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 571
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActionMode()V

    .line 574
    sget-object v8, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->deselectAll()V

    .line 576
    const v8, 0x7f0900ef

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 577
    .local v7, "tv":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mItemSize:Ljava/lang/Integer;
    invoke-static {v9, v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$802(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 579
    sget-object v8, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPositionForView(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mItemSize:Ljava/lang/Integer;
    invoke-static {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$800(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->toggleSelection(II)V

    .line 581
    const/4 v8, 0x1

    .line 634
    .end local v7    # "tv":Landroid/widget/TextView;
    :goto_0
    return v8

    .line 584
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 588
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    .line 589
    .local v2, "mDetailInfo":Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 590
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->selectDetail(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)V

    .line 592
    :cond_2
    const/4 v8, 0x0

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->refreshDetail:Z
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$302(Z)Z

    .line 594
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrevView:Landroid/view/View;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$900()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 595
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrevView:Landroid/view/View;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$900()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0900ec

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 596
    .local v6, "prevTvName":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0154

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 597
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 598
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrevView:Landroid/view/View;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$900()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0900ea

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 599
    .local v5, "prevTvGroupCount":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0154

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 600
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 602
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrevView:Landroid/view/View;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$900()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0900f4

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 603
    .local v3, "prevIvArrow":Landroid/widget/ImageView;
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrevView:Landroid/view/View;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$900()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0900f5

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 605
    .local v4, "prevIvArrowSplit":Landroid/widget/ImageView;
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 615
    .end local v3    # "prevIvArrow":Landroid/widget/ImageView;
    .end local v4    # "prevIvArrowSplit":Landroid/widget/ImageView;
    .end local v5    # "prevTvGroupCount":Landroid/widget/TextView;
    .end local v6    # "prevTvName":Landroid/widget/TextView;
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isSplitStatus:Z
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 616
    const v8, 0x7f0900f4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 617
    .local v0, "ivArrow":Landroid/widget/ImageView;
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    const v8, 0x7f0900f5

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 619
    .local v1, "ivArrowSplit":Landroid/widget/ImageView;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    :goto_1
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrevView:Landroid/view/View;
    invoke-static {p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$902(Landroid/view/View;)Landroid/view/View;

    .line 628
    iget v8, v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->pos:I

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->selectedPos:I
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$202(I)I

    .line 629
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 630
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openForList(Landroid/view/View;)V

    .line 634
    .end local v0    # "ivArrow":Landroid/widget/ImageView;
    .end local v1    # "ivArrowSplit":Landroid/widget/ImageView;
    .end local v2    # "mDetailInfo":Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 621
    .restart local v2    # "mDetailInfo":Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;
    :cond_5
    const v8, 0x7f0900f4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 622
    .restart local v0    # "ivArrow":Landroid/widget/ImageView;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 623
    const v8, 0x7f0900f5

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 624
    .restart local v1    # "ivArrowSplit":Landroid/widget/ImageView;
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
