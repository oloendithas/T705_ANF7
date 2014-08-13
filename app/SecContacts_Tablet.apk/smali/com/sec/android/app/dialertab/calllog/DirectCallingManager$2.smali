.class Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setMotionSensor(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isPossibleToCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 228
    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$400()Z

    move-result v2

    if-nez v2, :cond_0

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTryToCall:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    :cond_0
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "onMotionListener() twice"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    return v0

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # invokes: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->isCall()Z
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$700(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "onMotionListener() isCall"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_2
    # setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$402(Z)Z

    move v0, v1

    .line 239
    goto :goto_0
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/motion/MREvent;

    .prologue
    .line 202
    const-string v0, "Logs/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMotionListener() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCheckTwiceEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$400()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCheckTryToCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTryToCall:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$500()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 205
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;->isPossibleToCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->readyForCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;->isPossibleToCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    const-string v1, "left"

    # invokes: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->readyForCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;->isPossibleToCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    const-string v1, "right"

    # invokes: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->readyForCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
    .end sparse-switch
.end method
