.class public Lcom/diotek/ime/framework/connect/TwitterConnectModule;
.super Lcom/diotek/ime/framework/connect/AbstractConnectModule;
.source "TwitterConnectModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/diotek/ime/framework/connect/AbstractConnectModule;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/diotek/ime/framework/connect/TwitterConnectModule;->initialize()V

    .line 16
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->initialize()V

    .line 22
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 25
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 27
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, " "

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v2, "stk":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.action.twitter.timestamp.update"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "timeUpdated"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    iget-object v4, p0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    .line 36
    .local v1, "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 37
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "token":Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 39
    new-instance v1, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;

    .end local v1    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v4, v3, v7, v6}, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;-><init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;IZ)V

    .line 44
    .restart local v1    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    :goto_1
    if-eqz v1, :cond_1

    .line 45
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getXt9LearningContentsHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x65

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 42
    :cond_2
    new-instance v1, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;

    .end local v1    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v3, v7, v5}, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;-><init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;IZ)V

    .restart local v1    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    goto :goto_1

    .line 49
    .end local v1    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    .end local v2    # "stk":Ljava/util/StringTokenizer;
    .end local v3    # "token":Ljava/lang/String;
    :cond_3
    return-void
.end method
