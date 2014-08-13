.class Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;
.super Ljava/lang/Object;
.source "InteractionGroupSelectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f0e0508

    const v3, 0x7f0e034f

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->val$mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->val$mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 388
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->val$mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "adapterCount":I
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    .line 397
    :cond_0
    if-eqz v0, :cond_1

    .line 398
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCountInSearchMode:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 399
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)I

    move-result v1

    if-nez v1, :cond_2

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->val$mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->val$mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 420
    .end local v0    # "adapterCount":I
    :cond_1
    return-void

    .line 401
    .restart local v0    # "adapterCount":I
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsAllSelected:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mLimitedCount:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 402
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->val$mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->val$mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->val$mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCountInSearchMode:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)I

    move-result v1

    if-nez v1, :cond_6

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->val$mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 410
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsAllSelected:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mLimitedCount:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)I

    move-result v2

    if-lt v1, v2, :cond_8

    .line 411
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->val$mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 413
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->val$mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->val$mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
