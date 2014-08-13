.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$30;
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
    .line 3385
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$30;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3387
    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    const-string v1, "feature_view_by_vvm"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3389
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3390
    const/16 v1, 0xa

    if-ne p2, v1, :cond_3

    .line 3391
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    .line 3403
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$30;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput p2, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 3404
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewBy:I
    invoke-static {p2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2302(I)I

    .line 3405
    const-string v1, "permanent_save_view_by_setting"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3406
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$30;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->saveViewByPreference(I)V

    .line 3408
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$30;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3409
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$30;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$30;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v2, v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setCallLogAdapter(I)V

    .line 3410
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$30;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mOrientationSyncListener:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$900(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3411
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$30;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 3412
    .local v0, "config":I
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$30;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mOrientationSyncListener:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$900(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$30;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v2, v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;->loadView(II)V

    .line 3417
    .end local v0    # "config":I
    :cond_2
    :goto_1
    return-void

    .line 3393
    :cond_3
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    goto :goto_0

    .line 3396
    :cond_4
    const/16 v1, 0x9

    if-ne p2, v1, :cond_5

    .line 3397
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    goto :goto_0

    .line 3399
    :cond_5
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bViewVoicemail:Z

    goto :goto_0

    .line 3415
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$30;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$30;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v2, v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setCallLogAdapter(I)V

    goto :goto_1
.end method
