.class Lcom/diotek/ime/framework/common/InputManagerImpl$25;
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
    .line 9721
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$25;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9724
    const-string v1, "alternative_code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9725
    .local v0, "code":Ljava/lang/String;
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$25;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mAlternativeChar:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$6102(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 9726
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$25;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    const/4 v2, 0x0

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsHwUmlautPopupShown:Z
    invoke-static {v1, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$6202(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    .line 9727
    return-void
.end method
