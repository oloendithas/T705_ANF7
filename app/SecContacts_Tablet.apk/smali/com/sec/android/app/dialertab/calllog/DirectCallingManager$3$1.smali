.class Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3$1;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3$1;->this$1:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 688
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3$1;->this$1:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsProximityCloseDistance:Z

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3$1;->this$1:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # invokes: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->registerAccelerometer()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1500(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    .line 690
    # setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$202(Z)Z

    .line 691
    # setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$402(Z)Z

    .line 692
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "mProximityListener, mCheckTwiceEvent is false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :goto_0
    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3$1;->this$1:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # invokes: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unregisterAccelerometer()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3$1;->this$1:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->readyForCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Ljava/lang/String;)V

    goto :goto_0
.end method
