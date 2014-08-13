.class Lcom/diotek/ime/framework/common/InputManagerImpl$6;
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
    .line 6498
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6501
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6502
    const-string v0, "SamsungIME"

    const-string v1, "mRingerModeChangedReceiver onReceive()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6504
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mSoundEffectController:Lcom/diotek/ime/framework/effect/SoundEffectController;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3000(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/effect/SoundEffectController;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/effect/SoundEffectController;->updateRingerMode()V

    .line 6505
    return-void
.end method
