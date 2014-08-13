.class public Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0

    .prologue
    .line 4232
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deselectAll()V
    .locals 4

    .prologue
    .line 4541
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v0

    .line 4542
    .local v0, "a":Landroid/widget/Adapter;
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 4543
    const/4 v1, 0x0

    .local v1, "position":I
    :goto_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4544
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    .line 4543
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4546
    :cond_0
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 4547
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 4423
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    .line 4424
    .local v7, "mSelectedIdsCount":I
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4488
    :cond_0
    :goto_0
    return v9

    .line 4427
    :pswitch_0
    const-string v0, "CallLogFragment"

    const-string v1, "onActionItemClicked : menu_delete"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4428
    if-lez v7, :cond_0

    .line 4429
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getCount()I

    move-result v0

    if-ne v7, v0, :cond_1

    .line 4430
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteConfirmDlg(I)V
    invoke-static {v0, v9}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)V

    goto :goto_0

    .line 4432
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v1, 0x2

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteConfirmDlg(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)V

    goto :goto_0

    .line 4437
    :pswitch_1
    const/4 v6, -0x1

    .line 4439
    .local v6, "contact_Id":I
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4445
    .local v8, "phonesCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 4446
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 4447
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4448
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 4450
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4453
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->viewContact(Landroid/content/Context;I)V

    .line 4454
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 4457
    .end local v6    # "contact_Id":I
    .end local v8    # "phonesCursor":Landroid/database/Cursor;
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->editCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 4458
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 4461
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->AddToContact(Landroid/content/Context;Ljava/lang/String;)V

    .line 4462
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    .line 4465
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3700(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4466
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    .line 4469
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->openBlockNumberSettingDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 4470
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    .line 4474
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isCheckedBefore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4475
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3400(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "NUMBER"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/util/ArrayList;)Z

    .line 4479
    :goto_1
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    .line 4477
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3400(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "NUMBER"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->showDialog(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAddToRejectListDialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 4482
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3400(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "NUMBER"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 4483
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    .line 4424
    nop

    :pswitch_data_0
    .packed-switch 0x7f0904db
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4261
    const-string v0, "CallLogFragment"

    const-string v1, "onCreateActionMode"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    .line 4264
    .local v7, "inflater":Landroid/view/MenuInflater;
    const v0, 0x7f120005

    invoke-virtual {v7, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 4266
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040082

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 4269
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f0901ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4277
    new-instance v1, Lcom/sec/android/app/contacts/list/SelectionMenu;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0901ee

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-direct {v1, v2, v0, p0}, Lcom/sec/android/app/contacts/list/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    .line 4280
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 4281
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 4283
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 4284
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionEnabled(Z)V

    .line 4286
    sput-object p1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    .line 4287
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMultiSelectEnabled:Z
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3002(Z)Z

    .line 4288
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCursorSize:I
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3100()I

    move-result v0

    if-nez v0, :cond_0

    .line 4289
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewBy:I
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2300()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4291
    .local v6, "dbCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 4292
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCursorSize:I
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3102(I)I

    .line 4293
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4296
    .end local v6    # "dbCursor":Landroid/database/Cursor;
    :cond_0
    return v8
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4385
    const-string v2, "CallLogFragment"

    const-string v3, "onDestroyActionMode "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDoNotResetSelectedItems:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3500()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4387
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDoNotResetSelectedItems:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3502(Z)Z

    .line 4388
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v0

    .line 4389
    .local v0, "a":Landroid/widget/Adapter;
    const/4 v1, 0x0

    .local v1, "position":I
    :goto_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4390
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    .line 4389
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4392
    :cond_0
    sput-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    .line 4393
    sput-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    .line 4394
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMultiSelectEnabled:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3002(Z)Z

    .line 4412
    .end local v0    # "a":Landroid/widget/Adapter;
    .end local v1    # "position":I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    if-eqz v2, :cond_1

    .line 4413
    const-string v2, "CallLogFragment"

    const-string v3, "init mSelectionMenu"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4414
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/SelectionMenu;->hideSelectionButton()V

    .line 4415
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/SelectionMenu;->clearPopupList()V

    .line 4416
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/SelectionMenu;->disMiss()V

    .line 4418
    :cond_1
    return-void

    .line 4397
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->deselectAll()V

    .line 4398
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCursorSize:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3102(I)I

    .line 4400
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4401
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 4404
    :cond_3
    sput-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    .line 4405
    sput-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    .line 4406
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMultiSelectEnabled:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3002(Z)Z

    .line 4408
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionEnabled(Z)V

    .line 4410
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->fetchLogs()V

    goto :goto_1
.end method

.method public onPopupItemClick(I)Z
    .locals 2
    .param p1, "itemId"    # I

    .prologue
    .line 4495
    const v0, 0x7f09001e

    if-ne p1, v0, :cond_1

    .line 4496
    const-string v0, "CallLogFragment"

    const-string v1, "onPopupItemClick : action_select_all"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4497
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->selectAll()V

    .line 4501
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 4502
    const/4 v0, 0x0

    return v0

    .line 4498
    :cond_1
    const v0, 0x7f09001f

    if-ne p1, v0, :cond_0

    .line 4499
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->deselectAll()V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 13
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 4301
    const-string v0, "CallLogFragment"

    const-string v1, "onPrepareActionMode"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v7, 0x1

    .line 4303
    .local v7, "isSelectedOneItem":Z
    :goto_0
    const/4 v6, 0x0

    .line 4304
    .local v6, "isSavedContact":Z
    const/4 v8, 0x0

    .line 4305
    .local v8, "mIsBlocked":Z
    const/4 v9, 0x0

    .line 4307
    .local v9, "mIsUnBlocked":Z
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSelectedItemInfo(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)V

    .line 4308
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->delete:Z

    if-eqz v0, :cond_2

    .line 4310
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 4311
    const v0, 0x7f0904db

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4312
    const v0, 0x7f0904db

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4313
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4314
    const v0, 0x7f0904db

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4316
    :cond_0
    const/4 v0, 0x1

    .line 4380
    :goto_1
    return v0

    .line 4302
    .end local v6    # "isSavedContact":Z
    .end local v7    # "isSelectedOneItem":Z
    .end local v8    # "mIsBlocked":Z
    .end local v9    # "mIsUnBlocked":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 4318
    .restart local v6    # "isSavedContact":Z
    .restart local v7    # "isSelectedOneItem":Z
    .restart local v8    # "mIsBlocked":Z
    .restart local v9    # "mIsUnBlocked":Z
    :cond_2
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 4319
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 4380
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 4321
    :cond_3
    new-instance v10, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    .line 4322
    .local v10, "mPhoneNumberHelper":Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4323
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 4324
    const v0, 0x7f0904dc

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4325
    const v0, 0x7f0904db

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4326
    const/4 v0, 0x1

    goto :goto_1

    .line 4329
    :cond_4
    if-eqz v7, :cond_9

    .line 4330
    const/4 v11, 0x0

    .line 4333
    .local v11, "phonesCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 4338
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_5

    .line 4339
    const/4 v6, 0x1

    .line 4342
    :cond_5
    if-eqz v11, :cond_6

    .line 4343
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4346
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedItemsInfo:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3400(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "NUMBER"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 4347
    .local v12, "selectNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isBlockedNumbers(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v8

    .line 4348
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isUnBlockedNumbers(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v9

    .line 4349
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4351
    const v0, 0x7f0904e1

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4352
    const v0, 0x7f0904e2

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4353
    const v0, 0x7f0904e3

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4365
    .end local v11    # "phonesCursor":Landroid/database/Cursor;
    .end local v12    # "selectNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-eqz v6, :cond_a

    .line 4366
    const v0, 0x7f0904df

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4367
    const v0, 0x7f0904e0

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4373
    :goto_4
    const v0, 0x7f0904dc

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4374
    const v0, 0x7f0904db

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4375
    const v0, 0x7f0904de

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4376
    const v0, 0x7f0904dd

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 4342
    .restart local v11    # "phonesCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_7

    .line 4343
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 4355
    .restart local v12    # "selectNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    const v0, 0x7f0904e1

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4356
    const v0, 0x7f0904e2

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4357
    const v0, 0x7f0904e3

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 4360
    .end local v11    # "phonesCursor":Landroid/database/Cursor;
    .end local v12    # "selectNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    const v0, 0x7f0904e1

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4361
    const v0, 0x7f0904e2

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4362
    const v0, 0x7f0904e3

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 4369
    :cond_a
    const v0, 0x7f0904df

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4370
    const v0, 0x7f0904e0

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4
.end method

.method public selectAll()V
    .locals 4

    .prologue
    .line 4530
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v0

    .line 4531
    .local v0, "a":Landroid/widget/Adapter;
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 4532
    const/4 v1, 0x0

    .local v1, "position":I
    :goto_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4533
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getGroupSize(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 4534
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    .line 4532
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4536
    :cond_0
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 4537
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 4538
    :cond_1
    return-void
.end method

.method public setItemCheck()V
    .locals 5

    .prologue
    .line 4550
    const/4 v1, 0x0

    .local v1, "mPosition":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 4551
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    .line 4550
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4553
    :cond_0
    const/4 v2, 0x0

    .line 4554
    .local v2, "position":I
    const/4 v0, 0x0

    .local v0, "dataCnt":I
    :goto_1
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 4555
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 4556
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    .line 4554
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4559
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 4562
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-gez v3, :cond_2

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_3

    .line 4563
    :cond_2
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 4565
    :cond_3
    return-void
.end method

.method public toggleSelection(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 4506
    if-gez p1, :cond_1

    .line 4507
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleSelection invalid position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", GroupSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4527
    :cond_0
    :goto_0
    return-void

    .line 4512
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isItemChecked(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4513
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSelection - position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", GroupSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4514
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->append(II)V

    .line 4515
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    .line 4521
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 4524
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gez v0, :cond_2

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 4525
    :cond_2
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    .line 4517
    :cond_3
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSelection - position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4518
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4519
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    goto :goto_1
.end method

.method public updateSelectionMenu()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4239
    const-string v4, "CallLogFragment"

    const-string v5, "updateSelectionMenu"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 4243
    .local v0, "count":I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e03e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4245
    .local v1, "format":Ljava/lang/String;
    const-string v4, "CallLogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4247
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/list/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 4252
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 4253
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    :goto_0
    invoke-virtual {v4, v2, v0}, Lcom/sec/android/app/contacts/list/SelectionMenu;->updateSelectAllMode(ZI)V

    .line 4257
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 4253
    goto :goto_0

    .line 4255
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/SelectionMenu;->clearPopupList()V

    goto :goto_1
.end method
