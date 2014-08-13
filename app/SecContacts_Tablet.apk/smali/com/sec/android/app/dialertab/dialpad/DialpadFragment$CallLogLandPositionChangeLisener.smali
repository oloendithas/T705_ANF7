.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CallLogLandPositionChangeLisener;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallLogLandPositionChangeLisener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 16215
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CallLogLandPositionChangeLisener;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$1;

    .prologue
    .line 16215
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CallLogLandPositionChangeLisener;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    return-void
.end method


# virtual methods
.method public getGroupIDsOnActionMode(I)V
    .locals 1
    .param p1, "config"    # I

    .prologue
    .line 16231
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CallLogLandPositionChangeLisener;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCallLogFragmentPort:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16233
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CallLogLandPositionChangeLisener;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCallLogFragmentPort:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setListOnActionMode()V

    .line 16236
    :cond_0
    return-void
.end method

.method public loadSelection(III)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "config"    # I

    .prologue
    .line 16219
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallLogLandPositionChangeLisener setPosition index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", config : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 16220
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CallLogLandPositionChangeLisener;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCallLogFragmentPort:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16223
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CallLogLandPositionChangeLisener;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCallLogFragmentPort:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setPosition(II)V

    .line 16224
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CallLogLandPositionChangeLisener;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCallLogFragmentPort:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 16227
    :cond_0
    return-void
.end method

.method public loadView(II)V
    .locals 1
    .param p1, "which"    # I
    .param p2, "config"    # I

    .prologue
    .line 16240
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CallLogLandPositionChangeLisener;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCallLogFragmentPort:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16242
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$CallLogLandPositionChangeLisener;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mCallLogFragmentPort:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setWhichButton(I)V

    .line 16244
    :cond_0
    return-void
.end method
