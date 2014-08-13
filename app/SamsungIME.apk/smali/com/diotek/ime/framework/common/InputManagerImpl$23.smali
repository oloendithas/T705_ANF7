.class Lcom/diotek/ime/framework/common/InputManagerImpl$23;
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
    .line 9208
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$23;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9211
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v0, :cond_0

    .line 9212
    const-string v0, "SamsungIME"

    const-string v1, "mShutDownReceiver onReceive()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9214
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$23;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputController;->release()V

    .line 9215
    return-void
.end method
