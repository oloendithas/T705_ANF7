.class Lcom/diotek/ime/framework/common/InputManagerImpl$OcrSIPTextReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OcrSIPTextReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 0

    .prologue
    .line 8593
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$OcrSIPTextReceiver;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x25

    .line 8596
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v0, :cond_0

    .line 8597
    const-string v0, "SamsungIME"

    const-string v1, "mOcrSIPTextReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8599
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$OcrSIPTextReceiver;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    const-string v1, "OCR_SIP_TEXT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/diotek/ime/framework/common/InputManagerImpl;->mStringfromOcr:Ljava/lang/String;

    .line 8600
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$OcrSIPTextReceiver;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsDisableLoopOfOcr:Z
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8601
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOcrHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$300()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8605
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$OcrSIPTextReceiver;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->setGetOcrString(Z)V

    .line 8606
    return-void

    .line 8603
    :cond_1
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOcrHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$300()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
