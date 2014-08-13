.class Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


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
    .line 759
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    .prologue
    .line 788
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onBeginningOfSpeech"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 803
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .prologue
    .line 776
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onEndOfSpeech"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return-void
.end method

.method public onError(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 780
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 781
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "recognition_error"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 782
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1700(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 783
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 784
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1700(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 785
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 798
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onEvent"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "partialResults"    # Landroid/os/Bundle;

    .prologue
    .line 792
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1700(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 793
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 794
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1700(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 795
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 771
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onReadyForSpeech"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$100(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Z)V

    .line 773
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "results"    # Landroid/os/Bundle;

    .prologue
    .line 765
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1700(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 766
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 767
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1700(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 768
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0
    .param p1, "rmsdB"    # F

    .prologue
    .line 762
    return-void
.end method
