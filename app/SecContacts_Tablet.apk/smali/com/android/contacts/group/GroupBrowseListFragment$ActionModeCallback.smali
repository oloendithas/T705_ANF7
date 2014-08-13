.class public Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

.field private mSpinnerButton:Landroid/widget/Button;

.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deselectAll()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 594
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->clearAllCheckStates()V

    .line 595
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged()V

    .line 596
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->refreshActionBarMode()V

    .line 597
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 485
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 494
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 487
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->show(Landroid/app/Fragment;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x7f0904f5
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 499
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 500
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120009

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 501
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040081

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 504
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0901ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback$1;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback$1;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0901ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->mSpinnerButton:Landroid/widget/Button;

    .line 513
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->mSpinnerButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 515
    new-instance v1, Lcom/sec/android/app/contacts/list/SelectionMenu;

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->mSpinnerButton:Landroid/widget/Button;

    invoke-direct {v1, v2, v3, p0}, Lcom/sec/android/app/contacts/list/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;)V

    iput-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    .line 516
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 517
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged()V

    .line 518
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsSelectionMode:Z
    invoke-static {v1, v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$602(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    .line 519
    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$702(Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 520
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mRestoreActionMode:Z
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$800(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mRestoreActionMode:Z
    invoke-static {v1, v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$802(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    .line 525
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 526
    return v5

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$502(Lcom/android/contacts/group/GroupBrowseListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 531
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->deselectAll()V

    .line 532
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mIsSelectionMode:Z
    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$602(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    .line 533
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$902(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    .line 534
    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$702(Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 535
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mActionModeCallback:Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;
    invoke-static {v0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1002(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;)Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;

    .line 536
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mGroupCount:I
    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1102(Lcom/android/contacts/group/GroupBrowseListFragment;I)I

    .line 537
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->clearAllCheckStates()V

    .line 538
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged()V

    .line 539
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-object v0, v0, Lcom/android/contacts/group/GroupBrowseListFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-object v0, v0, Lcom/android/contacts/group/GroupBrowseListFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    iput-object v2, v0, Lcom/android/contacts/group/GroupBrowseListFragment;->cursor:Landroid/database/Cursor;

    .line 542
    return-void
.end method

.method public onPopupItemClick(I)Z
    .locals 1
    .param p1, "itemId"    # I

    .prologue
    .line 561
    const v0, 0x7f09001e

    if-ne p1, v0, :cond_1

    .line 562
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->selectAll()V

    .line 566
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 567
    const/4 v0, 0x0

    return v0

    .line 563
    :cond_1
    const v0, 0x7f09001f

    if-ne p1, v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->deselectAll()V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 546
    const v3, 0x7f0904f5

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 547
    .local v0, "deleteMenu":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$900(Lcom/android/contacts/group/GroupBrowseListFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 548
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 549
    const v3, 0x7f0e0061

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 550
    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 552
    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 556
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 552
    goto :goto_0

    .line 554
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public refreshActionBarMode()V
    .locals 1

    .prologue
    .line 571
    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$700()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$700()Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 575
    :cond_0
    return-void
.end method

.method public selectAll()V
    .locals 4

    .prologue
    .line 600
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 601
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 602
    const/4 v0, 0x0

    .local v0, "position":I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mGroupCount:I
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1100(Lcom/android/contacts/group/GroupBrowseListFragment;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-object v2, v2, Lcom/android/contacts/group/GroupBrowseListFragment;->cursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    iget-object v1, v1, Lcom/android/contacts/group/GroupBrowseListFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->selectAllCheckStates()V

    .line 607
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged()V

    .line 608
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->refreshActionBarMode()V

    .line 609
    return-void
.end method

.method public setActionModeBarSpinnerState(Z)V
    .locals 1
    .param p1, "aIsEnabled"    # Z

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->mSpinnerButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 613
    return-void
.end method

.method public updateSelectionMenu()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 578
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 580
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e03e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "format":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/list/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mGroupCount:I
    invoke-static {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1100(Lcom/android/contacts/group/GroupBrowseListFragment;)I

    move-result v4

    if-lez v4, :cond_1

    .line 584
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mGroupCount:I
    invoke-static {v6}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1100(Lcom/android/contacts/group/GroupBrowseListFragment;)I

    move-result v6

    if-ge v5, v6, :cond_0

    :goto_0
    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/app/contacts/list/SelectionMenu;->updateSelectAllMode(ZI)V

    .line 590
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 584
    goto :goto_0

    .line 587
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/SelectionMenu;->clearPopupList()V

    goto :goto_1
.end method
