.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$53;
.super Landroid/database/ContentObserver;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 15683
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$53;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    .line 15686
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$53;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSystemOneHandSwitchStateSettingValue()I

    move-result v0

    .line 15687
    .local v0, "oneHandSwitchState":I
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandGripChangeObserver new oneHandSwitchState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", old oneHandSwitchState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$53;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mOneHandAdaptableSwitchState:I
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 15688
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$53;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mOneHandAdaptableSwitchState:I
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11800(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 15689
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$53;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mOneHandAdaptableSwitchState:I
    invoke-static {v1, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11802(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    .line 15691
    if-ne v0, v4, :cond_1

    .line 15692
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$53;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v2, 0x0

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->moveOneHandDialer(ZZ)V
    invoke-static {v1, v2, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ZZ)V

    .line 15697
    :cond_0
    :goto_0
    return-void

    .line 15693
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 15694
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$53;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->moveOneHandDialer(ZZ)V
    invoke-static {v1, v4, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ZZ)V

    goto :goto_0
.end method
