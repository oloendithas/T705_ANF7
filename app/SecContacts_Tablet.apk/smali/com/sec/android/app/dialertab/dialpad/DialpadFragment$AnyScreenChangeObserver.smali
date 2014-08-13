.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$AnyScreenChangeObserver;
.super Landroid/database/ContentObserver;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnyScreenChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V
    .locals 1

    .prologue
    .line 15762
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$AnyScreenChangeObserver;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 15763
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 15764
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 15767
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$AnyScreenChangeObserver;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->readOneHandOptionValue()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$12000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V

    .line 15769
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnyScreenChangeObserver mSettingAnyScreenRunning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSettingAnyScreenRunning:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$12100()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 15770
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$AnyScreenChangeObserver;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->resetDialerLayout()V

    .line 15771
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$AnyScreenChangeObserver;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 15772
    return-void
.end method
