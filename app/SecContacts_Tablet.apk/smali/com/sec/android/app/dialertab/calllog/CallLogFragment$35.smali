.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$35;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteConfirmDlg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field final synthetic val$iOpIndex:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)V
    .locals 0

    .prologue
    .line 4589
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$35;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$35;->val$iOpIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4591
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$35;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v4, 0x5

    if-le v0, v4, :cond_1

    move v0, v1

    :goto_0
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowDelProgressDlg:Z
    invoke-static {v3, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3802(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)Z

    .line 4592
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$35;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {v0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$PerformScan;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    new-array v1, v1, [Ljava/lang/Integer;

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$35;->val$iOpIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4593
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$35;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowDelProgressDlg:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3800(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4594
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$35;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showProgress()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$3900(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    .line 4596
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 4591
    goto :goto_0
.end method
