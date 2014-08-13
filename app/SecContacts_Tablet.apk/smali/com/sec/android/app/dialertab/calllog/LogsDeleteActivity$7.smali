.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;
.super Ljava/lang/Object;
.source "LogsDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showRestoreConfirmDlg(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

.field final synthetic val$iOpIndex:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;I)V
    .locals 0

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->val$iOpIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1232
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x5

    if-le v0, v4, :cond_1

    move v0, v1

    :goto_0
    # setter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mShowDelProgressDlg:Z
    invoke-static {v3, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1302(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Z)Z

    .line 1233
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->val$iOpIndex:I

    packed-switch v0, :pswitch_data_0

    .line 1261
    :cond_0
    :goto_1
    # setter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bDBChanged:Z
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1602(Z)Z

    .line 1262
    return-void

    :cond_1
    move v0, v2

    .line 1232
    goto :goto_0

    .line 1235
    :pswitch_0
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {v0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    new-array v1, v1, [Ljava/lang/Integer;

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->val$iOpIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1236
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mShowDelProgressDlg:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1300(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showProgress()V

    goto :goto_1

    .line 1243
    :pswitch_1
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1244
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1500(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1500(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1245
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1500(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1247
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1248
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {v0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    new-array v1, v1, [Ljava/lang/Integer;

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->val$iOpIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1249
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mShowDelProgressDlg:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1300(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showProgress()V

    goto :goto_1

    .line 1254
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    const v1, 0x7f0e034e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
