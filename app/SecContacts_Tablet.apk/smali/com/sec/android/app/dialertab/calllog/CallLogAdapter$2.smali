.class Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 464
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 470
    const/4 v10, 0x0

    .line 471
    .local v10, "myActivity":Lcom/android/contacts/activities/DialtactsActivity;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 472
    .local v11, "obj":Landroid/app/Activity;
    instance-of v0, v11, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v0, :cond_0

    move-object v10, v11

    .line 473
    check-cast v10, Lcom/android/contacts/activities/DialtactsActivity;

    .line 475
    :cond_0
    invoke-static {v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->doBoost(Landroid/content/Context;)V

    .line 478
    .end local v10    # "myActivity":Lcom/android/contacts/activities/DialtactsActivity;
    .end local v11    # "obj":Landroid/app/Activity;
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mToolsValue:I
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_4

    .line 479
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 480
    .local v8, "mNumber":Ljava/lang/String;
    const-string v0, "-1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "-2"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "-3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "P"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 484
    const-string v0, "CallLogAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateActionListener, mNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 486
    .local v9, "mSelectedContactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, " ; "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$700(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onPickDataAction(Ljava/util/HashMap;)V

    .line 558
    .end local v8    # "mNumber":Ljava/lang/String;
    .end local v9    # "mSelectedContactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :goto_0
    return-void

    .line 491
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "status"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 496
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 498
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 499
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 500
    .local v12, "status":I
    const-string v0, "CallLogAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    packed-switch v12, :pswitch_data_0

    .line 516
    .end local v12    # "status":I
    :cond_5
    :pswitch_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 520
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    .line 521
    .local v7, "intentProvider":Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    const-string v0, "feature_folder_type"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 522
    const/4 v10, 0x0

    .line 523
    .restart local v10    # "myActivity":Lcom/android/contacts/activities/DialtactsActivity;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 524
    .restart local v11    # "obj":Landroid/app/Activity;
    instance-of v0, v11, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v0, :cond_7

    move-object v10, v11

    .line 525
    check-cast v10, Lcom/android/contacts/activities/DialtactsActivity;

    .line 527
    :cond_7
    if-eqz v7, :cond_3

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    :cond_8
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v0, :cond_3

    .line 530
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 508
    .end local v7    # "intentProvider":Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .end local v10    # "myActivity":Lcom/android/contacts/activities/DialtactsActivity;
    .end local v11    # "obj":Landroid/app/Activity;
    .restart local v12    # "status":I
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e019c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v12    # "status":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 533
    .restart local v7    # "intentProvider":Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    :cond_a
    const-string v0, "feature_tablet_selection_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 536
    const v0, 0x7f0900ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 537
    .local v13, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v13}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mItemSize:Ljava/lang/Integer;
    invoke-static {v1, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$802(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    if-eqz v0, :cond_3

    .line 541
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mItemSize:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$800(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$ActionModeCallback;->toggleSelection(II)V

    goto/16 :goto_0

    .line 545
    .end local v13    # "tv":Landroid/widget/TextView;
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "0014"

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 546
    if-eqz v7, :cond_3

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 552
    :cond_c
    if-eqz v7, :cond_3

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
