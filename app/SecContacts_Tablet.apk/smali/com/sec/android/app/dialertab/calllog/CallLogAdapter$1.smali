.class Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 405
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 407
    sparse-switch p2, :sswitch_data_0

    .line 459
    :cond_0
    :goto_0
    return v10

    .line 409
    :sswitch_0
    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v9, :cond_0

    .line 411
    const/4 v4, 0x0

    .line 412
    .local v4, "number":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 413
    .local v5, "root":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    .line 414
    .local v7, "views":Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    iget-object v8, v7, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 415
    if-eqz v4, :cond_0

    .line 416
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e009c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e009d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e009e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$500(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 422
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    .end local v5    # "root":Landroid/view/View;
    .end local v7    # "views":Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 430
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "number":Ljava/lang/String;
    :sswitch_1
    const-string v8, "feature_support_keypad"

    invoke-static {v8}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "feature_ctc"

    invoke-static {v8}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v9, :cond_0

    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 436
    .restart local v5    # "root":Landroid/view/View;
    const/4 v6, 0x0

    .line 437
    .local v6, "tv":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    .line 438
    .restart local v7    # "views":Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    iget-object v6, v7, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    .line 439
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 441
    .local v2, "itemPosition":I
    iget-object v6, v7, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    .line 442
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 443
    .local v3, "itemSize":I
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->isShowing()Z

    move-result v8

    if-nez v8, :cond_0

    .line 445
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteLogsConfirmDlg(II)V

    goto/16 :goto_0

    .line 451
    .end local v2    # "itemPosition":I
    .end local v3    # "itemSize":I
    .end local v5    # "root":Landroid/view/View;
    .end local v6    # "tv":Landroid/widget/TextView;
    .end local v7    # "views":Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    :sswitch_2
    const-string v8, "feature_folder_type"

    invoke-static {v8}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v9, :cond_0

    .line 452
    sput-boolean v9, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mResumeFromDetail:Z

    goto/16 :goto_0

    .line 407
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x17 -> :sswitch_2
        0x43 -> :sswitch_1
    .end sparse-switch
.end method
