.class Lcom/diotek/ime/framework/common/InputManagerImpl$8;
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
    .line 8517
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$8;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 8522
    const-string v3, "SamsungIME"

    const-string v4, "mConnectBTKeyboard onReceive()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8525
    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 8526
    .local v2, "state":I
    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 8527
    .local v1, "prevState":I
    const-string v3, "android.bluetooth.profile.extra.isKeyboard"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 8528
    .local v0, "isKeyboard":Z
    if-eqz v0, :cond_1

    .line 8529
    if-ne v2, v8, :cond_2

    .line 8530
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mBTKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3300()I

    move-result v3

    if-gez v3, :cond_0

    .line 8531
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mConnectBTKeyboard onReceive() connect - mBTKeyboardCount"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mBTKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3300()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--> 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8532
    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mBTKeyboardCount:I
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3302(I)I

    .line 8534
    :cond_0
    # operator++ for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mBTKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3308()I

    .line 8535
    # |= operator for: Lcom/diotek/ime/framework/common/InputManagerImpl;->keyboardState:I
    invoke-static {v8}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3176(I)I

    .line 8536
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$8;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->settingHWKeyboardConnection(Z)V
    invoke-static {v3, v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3400(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)V

    .line 8538
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mConnectBTKeyboard onReceive() state : CONNECTED("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") prevState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mBTKeyboardCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mBTKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3300()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8562
    :cond_1
    :goto_0
    return-void

    .line 8540
    :cond_2
    if-ne v1, v8, :cond_1

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 8542
    :cond_3
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mBTKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3300()I

    move-result v3

    if-ge v3, v7, :cond_4

    .line 8543
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mConnectBTKeyboard onReceive() connect - mBTKeyboardCount"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mBTKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3300()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--> 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8544
    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mBTKeyboardCount:I
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3302(I)I

    .line 8546
    :cond_4
    # operator-- for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mBTKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3310()I

    .line 8548
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mConnectBTKeyboard onReceive() state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prevState : CONNECTED("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") mBTKeyboardCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mBTKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3300()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8550
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mBTKeyboardCount:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3300()I

    move-result v3

    if-gtz v3, :cond_1

    .line 8551
    const/4 v3, -0x3

    # &= operator for: Lcom/diotek/ime/framework/common/InputManagerImpl;->keyboardState:I
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3172(I)I

    .line 8552
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->keyboardState:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3100()I

    move-result v3

    if-nez v3, :cond_1

    .line 8553
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$8;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->settingHWKeyboardConnection(Z)V
    invoke-static {v3, v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3400(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)V

    goto :goto_0
.end method
