.class Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "NamecardGridViewFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field mIsShowDone:Z

.field mMenuDelete:Landroid/view/MenuItem;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

.field final synthetic this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)V
    .locals 1

    .prologue
    .line 486
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mIsShowDone:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;-><init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->updateSelectionMenu()V

    return-void
.end method

.method private updateSelectionMenu()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 502
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 504
    .local v0, "count":I
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0e03e3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "format":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/list/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    invoke-static {v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 510
    iget-object v5, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v6, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    invoke-static {v6}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    move v2, v3

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v2, v6}, Lcom/sec/android/app/contacts/list/SelectionMenu;->updateSelectAllMode(ZI)V

    .line 516
    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mIsShowDone:Z

    if-eqz v2, :cond_3

    .line 517
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    :goto_2
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 521
    :goto_3
    return-void

    :cond_0
    move v2, v4

    .line 510
    goto :goto_0

    .line 513
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/SelectionMenu;->clearPopupList()V

    goto :goto_1

    :cond_2
    move v3, v4

    .line 517
    goto :goto_2

    .line 519
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    :goto_4
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_4
    move v3, v4

    goto :goto_4
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 673
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 674
    return-void
.end method

.method public deselectAll()V
    .locals 5

    .prologue
    .line 660
    const/4 v2, 0x0

    .local v2, "position":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTotalCount:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$100(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 661
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    .line 662
    .local v0, "contactId":J
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 663
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 660
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 666
    .end local v0    # "contactId":J
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 667
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 668
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x1

    .line 603
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0904f5

    if-ne v3, v4, :cond_0

    .line 605
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v8, :cond_1

    .line 606
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0224

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "title":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    const v4, 0x7f0e023d

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, "message":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback$2;

    invoke-direct {v5, p0, p1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback$2;-><init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 629
    .local v0, "deleteContactsConfirmDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 631
    .end local v0    # "deleteContactsConfirmDialog":Landroid/app/AlertDialog;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    return v8

    .line 609
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0223

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0
.end method

.method public onContactSelected(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 591
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 596
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 597
    invoke-direct {p0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1200(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 599
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f120009

    const v2, 0x7f0904f5

    const/4 v5, 0x1

    .line 526
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 527
    .local v0, "inflater":Landroid/view/MenuInflater;
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mIsShowDone:Z

    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {v0, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 529
    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    .line 530
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 531
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 532
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    const v2, 0x7f0e0061

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 533
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 540
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040081

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 543
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0901ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback$1;-><init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    new-instance v2, Lcom/sec/android/app/contacts/list/SelectionMenu;

    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f0901ee

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-direct {v2, v3, v1, p0}, Lcom/sec/android/app/contacts/list/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    .line 554
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # setter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mIsSelectionMode:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1102(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Z)Z

    .line 555
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 557
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->setMultiSelectionMode(Z)V

    .line 558
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->setSelectedContactIds(Ljava/util/ArrayList;)V

    .line 559
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    invoke-static {v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 560
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->clearCustomSearchResult()V

    .line 562
    invoke-direct {p0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 563
    return v5

    .line 536
    :cond_0
    invoke-virtual {v0, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 537
    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->setMultiSelectionMode(Z)V

    .line 582
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->clearAll()V

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->clearCustomSearchResult()V

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # setter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1202(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # setter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionModeCallback:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;
    invoke-static {v0, v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$602(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # setter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mIsSelectionMode:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1102(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Z)Z

    .line 588
    return-void
.end method

.method public onPopupItemClick(I)Z
    .locals 1
    .param p1, "itemId"    # I

    .prologue
    .line 636
    const v0, 0x7f09001e

    if-ne p1, v0, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->selectAll()V

    .line 641
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1200(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 643
    const/4 v0, 0x0

    return v0

    .line 638
    :cond_1
    const v0, 0x7f09001f

    if-ne p1, v0, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->deselectAll()V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 574
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 575
    return v1

    .line 574
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectAll()V
    .locals 5

    .prologue
    .line 648
    const/4 v2, 0x0

    .local v2, "position":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTotalCount:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$100(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 649
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    .line 650
    .local v0, "contactId":J
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 651
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 654
    .end local v0    # "contactId":J
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 655
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 656
    return-void

    .line 654
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setIsShowDone(Z)V
    .locals 0
    .param p1, "isShowDone"    # Z

    .prologue
    .line 497
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->mIsShowDone:Z

    .line 498
    return-void
.end method

.method public stopActionMode()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1200(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$1200(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 570
    :cond_0
    return-void
.end method
