.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$28;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openViewByDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0

    .prologue
    .line 3361
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$28;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 3363
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

    .line 3364
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bVIP_BLog:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEnableVIPApp:Z

    if-eqz v0, :cond_2

    .line 3366
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$28;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    const/16 v1, 0x50

    if-ge v0, v1, :cond_0

    .line 3367
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$28;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    add-int/lit8 v1, p2, 0x50

    iput v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 3371
    :cond_0
    :goto_0
    const-string v0, "permanent_save_view_by_setting"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3372
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$28;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->saveViewByPreference(I)V

    .line 3374
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$28;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$28;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setCallLogAdapter(I)V

    .line 3375
    return-void

    .line 3370
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$28;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput p2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    goto :goto_0
.end method
