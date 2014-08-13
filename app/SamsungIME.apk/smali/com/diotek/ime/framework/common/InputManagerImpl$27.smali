.class Lcom/diotek/ime/framework/common/InputManagerImpl$27;
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
    .line 9743
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$27;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9746
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$27;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/view/ViewController;->dismissPopupCandidate()V

    .line 9747
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$27;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0, p2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->dismissPopupForSystemDialogs(Landroid/content/Intent;)V

    .line 9748
    return-void
.end method
