.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f0e0508

    const v3, 0x7f0e034f

    .line 716
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 719
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 721
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getCountOfContactsAdapter()I
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$500(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I

    move-result v0

    .line 722
    .local v0, "adapterCount":I
    if-eqz v0, :cond_0

    .line 723
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCountInSearchMode:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$700(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 724
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I

    move-result v1

    if-nez v1, :cond_1

    .line 725
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 745
    .end local v0    # "adapterCount":I
    :cond_0
    return-void

    .line 726
    .restart local v0    # "adapterCount":I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsAllSelected:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$800(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$900(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 727
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 729
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 733
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCountInSearchMode:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$700(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I

    move-result v1

    if-nez v1, :cond_5

    .line 734
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 735
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsAllSelected:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$800(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$900(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I

    move-result v2

    if-lt v1, v2, :cond_7

    .line 736
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 738
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
