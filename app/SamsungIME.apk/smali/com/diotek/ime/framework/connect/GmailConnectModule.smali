.class public Lcom/diotek/ime/framework/connect/GmailConnectModule;
.super Lcom/diotek/ime/framework/connect/AbstractConnectModule;
.source "GmailConnectModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/diotek/ime/framework/connect/AbstractConnectModule;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/diotek/ime/framework/connect/GmailConnectModule;->initialize()V

    .line 14
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->initialize()V

    .line 20
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    new-instance v0, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;

    .end local v0    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v3, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;-><init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;IZ)V

    .line 38
    .restart local v0    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    :goto_0
    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getXt9LearningContentsHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 41
    :cond_0
    return-void

    .line 35
    :cond_1
    new-instance v0, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;

    .end local v0    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v3, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;-><init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;IZ)V

    .restart local v0    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    goto :goto_0
.end method

.method public updateTimeStamp()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.action.gmail.timestamp.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "timeUpdated"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    iget-object v1, p0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 27
    return-void
.end method
