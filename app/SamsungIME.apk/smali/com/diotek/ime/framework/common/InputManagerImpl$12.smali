.class Lcom/diotek/ime/framework/common/InputManagerImpl$12;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 0

    .prologue
    .line 8729
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$12;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 8733
    const-string v1, "android.intent.extra.device_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 8734
    .local v0, "state":I
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConnectUSBKeyboard onReceive() state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8736
    if-ne v0, v4, :cond_2

    .line 8737
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4400()I

    move-result v1

    if-gez v1, :cond_0

    .line 8738
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(state == Intent.EXTRA_USB_HID_STATE_ATTACHED) - mUSBKeyboardCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4400()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--> 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8739
    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mUSBKeyboardCount:I
    invoke-static {v5}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4402(I)I

    .line 8741
    :cond_0
    # operator++ for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4408()I

    .line 8742
    const/4 v1, 0x4

    # |= operator for: Lcom/diotek/ime/framework/common/InputManagerImpl;->keyboardState:I
    invoke-static {v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3176(I)I

    .line 8743
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$12;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDocKeyboardConnected:Z
    invoke-static {v1, v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4302(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    .line 8744
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$12;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->settingHWKeyboardConnection(Z)V
    invoke-static {v1, v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3400(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)V

    .line 8745
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(state == Intent.EXTRA_USB_HID_STATE_ATTACHED) - mUSBKeyboardCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4400()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8761
    :cond_1
    :goto_0
    return-void

    .line 8746
    :cond_2
    if-nez v0, :cond_1

    .line 8747
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4400()I

    move-result v1

    if-ge v1, v4, :cond_3

    .line 8748
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(state == Intent.EXTRA_USB_HID_STATE_DETTACHED) - mUSBKeyboardCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4400()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--> 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8749
    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mUSBKeyboardCount:I
    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4402(I)I

    .line 8751
    :cond_3
    # operator-- for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4410()I

    .line 8752
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(state == Intent.EXTRA_USB_HID_STATE_DETTACHED) - mUSBKeyboardCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4400()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8753
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4400()I

    move-result v1

    if-gtz v1, :cond_1

    .line 8754
    const/4 v1, -0x5

    # &= operator for: Lcom/diotek/ime/framework/common/InputManagerImpl;->keyboardState:I
    invoke-static {v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3172(I)I

    .line 8755
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->keyboardState:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3100()I

    move-result v1

    if-nez v1, :cond_1

    .line 8756
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$12;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDocKeyboardConnected:Z
    invoke-static {v1, v5}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4302(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    .line 8757
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$12;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->settingHWKeyboardConnection(Z)V
    invoke-static {v1, v5}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3400(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)V

    goto :goto_0
.end method
