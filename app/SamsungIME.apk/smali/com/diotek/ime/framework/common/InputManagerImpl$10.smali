.class Lcom/diotek/ime/framework/common/InputManagerImpl$10;
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
    .line 8688
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8691
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v0, :cond_0

    .line 8692
    const-string v0, "SamsungIME"

    const-string v1, "mKeyguardShortcutReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8694
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->cancelGuidePopupMessage()V
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3900(Lcom/diotek/ime/framework/common/InputManagerImpl;)V

    .line 8695
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->guidePopupIsHidden()V

    .line 8696
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$10;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->cancelPredictionWordMessage()V
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4000(Lcom/diotek/ime/framework/common/InputManagerImpl;)V

    .line 8697
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sService:Lcom/diotek/ime/framework/common/AbstractInputMethod;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4100()Lcom/diotek/ime/framework/common/AbstractInputMethod;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8698
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sService:Lcom/diotek/ime/framework/common/AbstractInputMethod;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4100()Lcom/diotek/ime/framework/common/AbstractInputMethod;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 8700
    :cond_1
    return-void
.end method
