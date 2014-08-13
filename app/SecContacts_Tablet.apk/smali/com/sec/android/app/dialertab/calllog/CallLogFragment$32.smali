.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openViewByDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field final synthetic val$simcardId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)V
    .locals 0

    .prologue
    .line 3466
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;->val$simcardId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 3468
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v0, :cond_3

    .line 3471
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    const/16 v1, 0x50

    if-ge v0, v1, :cond_0

    .line 3472
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    add-int/lit8 v1, p2, 0x50

    iput v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 3476
    :cond_0
    :goto_0
    const-string v0, "permanent_save_view_by_setting"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3477
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSelectSimId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->saveViewBySIMidPreference(I)V

    .line 3478
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->saveViewByPreference(I)V

    .line 3480
    :cond_1
    const-string v0, "feature_kdi"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3481
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->saveViewByPreference(I)V

    .line 3483
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSelectSimId:I

    iput v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    .line 3485
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;->val$simcardId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setCallLogAdapter(II)V

    .line 3487
    return-void

    .line 3475
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$32;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput p2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    goto :goto_0
.end method
