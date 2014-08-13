.class Lcom/diotek/ime/framework/common/InputManagerImpl$14;
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
    .line 8796
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$14;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8800
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v1, :cond_0

    .line 8801
    const-string v1, "SamsungIME"

    const-string v2, "mConnectKMSKeyboard onReceive()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8804
    :cond_0
    const-string v1, "device_state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 8805
    .local v0, "state":I
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 8806
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConnectKMSKeyboard onReceive() state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8809
    :cond_1
    if-ne v0, v5, :cond_3

    .line 8810
    const/16 v1, 0x20

    # |= operator for: Lcom/diotek/ime/framework/common/InputManagerImpl;->keyboardState:I
    invoke-static {v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3176(I)I

    .line 8811
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$14;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->settingHWKeyboardConnection(Z)V
    invoke-static {v1, v5}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3400(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)V

    .line 8818
    :cond_2
    :goto_0
    return-void

    .line 8812
    :cond_3
    if-nez v0, :cond_2

    .line 8813
    const/16 v1, -0x21

    # &= operator for: Lcom/diotek/ime/framework/common/InputManagerImpl;->keyboardState:I
    invoke-static {v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3172(I)I

    .line 8814
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->keyboardState:I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3100()I

    move-result v1

    if-nez v1, :cond_2

    .line 8815
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$14;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->settingHWKeyboardConnection(Z)V
    invoke-static {v1, v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3400(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)V

    goto :goto_0
.end method
