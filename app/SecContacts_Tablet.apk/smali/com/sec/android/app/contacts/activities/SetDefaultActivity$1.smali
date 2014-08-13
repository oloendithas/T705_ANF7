.class Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;
.super Ljava/lang/Object;
.source "SetDefaultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 568
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-virtual {v6}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-virtual {v6}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 573
    .local v2, "position":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 574
    .local v5, "selectedEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    const/4 v3, 0x0

    .line 578
    .local v3, "prevEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    .line 579
    .local v0, "entry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;
    instance-of v6, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    if-eqz v6, :cond_2

    move-object v6, v0

    .line 580
    check-cast v6, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    iget v6, v6, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    iget v7, v5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    if-ne v6, v7, :cond_2

    .line 581
    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .end local v0    # "entry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;
    iput-boolean v8, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    goto :goto_1

    .line 585
    :cond_3
    iget v6, v5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    packed-switch v6, :pswitch_data_0

    .line 630
    :goto_2
    if-eqz v3, :cond_f

    .line 631
    iput-boolean v8, v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 632
    iput-boolean v9, v5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 633
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 639
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 640
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 641
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 646
    :cond_6
    :goto_4
    const v6, 0x7f09044d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 647
    .local v4, "radiobutton":Landroid/widget/RadioButton;
    if-eqz v4, :cond_0

    .line 648
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->performClick()Z

    .line 649
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .line 587
    .end local v4    # "radiobutton":Landroid/widget/RadioButton;
    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v6

    if-eq v6, v10, :cond_7

    .line 588
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v3

    .end local v3    # "prevEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    check-cast v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 589
    .restart local v3    # "prevEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedPhotoIndex:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v6

    if-eq v6, v2, :cond_8

    .line 590
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z
    invoke-static {v6, v9}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    .line 593
    :goto_5
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v6, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 594
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstPhoto:Z
    invoke-static {v6, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$502(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto/16 :goto_2

    .line 592
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z
    invoke-static {v6, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_5

    .line 597
    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v6

    if-eq v6, v10, :cond_9

    .line 598
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v3

    .end local v3    # "prevEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    check-cast v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 599
    .restart local v3    # "prevEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNameIndex:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$700(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v6

    if-eq v6, v2, :cond_a

    .line 600
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z
    invoke-static {v6, v9}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$802(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    .line 603
    :goto_6
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v6, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 604
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstName:Z
    invoke-static {v6, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$902(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto/16 :goto_2

    .line 602
    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z
    invoke-static {v6, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$802(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_6

    .line 607
    :pswitch_2
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v6

    if-eq v6, v10, :cond_b

    .line 608
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v3

    .end local v3    # "prevEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    check-cast v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 609
    .restart local v3    # "prevEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_b
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNumberIndex:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v6

    if-eq v6, v2, :cond_c

    .line 610
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z
    invoke-static {v6, v9}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    .line 613
    :goto_7
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v6, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1002(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 614
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstNumber:Z
    invoke-static {v6, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1302(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto/16 :goto_2

    .line 612
    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z
    invoke-static {v6, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_7

    .line 617
    :pswitch_3
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v6

    if-eq v6, v10, :cond_d

    .line 618
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v3

    .end local v3    # "prevEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    check-cast v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 619
    .restart local v3    # "prevEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_d
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedEmailIndex:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1500(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v6

    if-eq v6, v2, :cond_e

    .line 620
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z
    invoke-static {v6, v9}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    .line 623
    :goto_8
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v6, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 624
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstEmail:Z
    invoke-static {v6, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1702(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto/16 :goto_2

    .line 622
    :cond_e
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z
    invoke-static {v6, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_8

    .line 634
    :cond_f
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 635
    :cond_10
    iput-boolean v9, v5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 636
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 643
    :cond_11
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
