.class Lcom/diotek/ime/framework/common/InputManagerImpl$30;
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
    .line 9794
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9797
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isUseVOResourceManager()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9798
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v0

    .line 9799
    .local v0, "volpm":Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    if-eqz v0, :cond_0

    .line 9800
    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->unregisterReceiver()V

    .line 9801
    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->clearInstance()V

    .line 9804
    .end local v0    # "volpm":Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    :cond_0
    return-void
.end method
