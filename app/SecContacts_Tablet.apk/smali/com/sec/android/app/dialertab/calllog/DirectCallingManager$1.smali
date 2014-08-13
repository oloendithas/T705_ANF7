.class Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;
.super Landroid/os/Handler;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
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
    .line 115
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 122
    const-string v1, "Logs/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : msg.what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 128
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    const/4 v2, 0x0

    # invokes: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->tryToCall(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$000(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->AnalizeRecorgnitionResult(Landroid/os/Bundle;)V

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # invokes: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V
    invoke-static {v1, v4}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$100(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Z)V

    goto :goto_0

    .line 136
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->AnalizeRecorgnitionPartialResult(Landroid/os/Bundle;)V

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # invokes: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V
    invoke-static {v1, v4}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$100(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Z)V

    goto :goto_0

    .line 140
    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "recognition_error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 141
    .local v0, "error":I
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->onResultErrorCode(I)V

    goto :goto_0

    .line 144
    .end local v0    # "error":I
    :sswitch_4
    # setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$202(Z)Z

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # invokes: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->updateProximitySensorMode(I)V
    invoke-static {v1, v5}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$300(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;I)V

    goto :goto_0

    .line 148
    :sswitch_5
    # setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$202(Z)Z

    .line 149
    # setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$402(Z)Z

    .line 150
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "STOP_PROXIMITY_SENSOR, mCheckTwiceEvent is false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # invokes: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->updateProximitySensorMode(I)V
    invoke-static {v1, v4}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$300(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;I)V

    goto :goto_0

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x30 -> :sswitch_2
        0x50 -> :sswitch_3
        0x60 -> :sswitch_4
        0x70 -> :sswitch_5
    .end sparse-switch
.end method
