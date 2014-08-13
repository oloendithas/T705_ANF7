.class public Lcom/nuance/connect/internal/HandlerRegistry;
.super Ljava/lang/Object;
.source "HandlerRegistry.java"


# instance fields
.field final handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/ConnectHandler;",
            ">;"
        }
    .end annotation
.end field

.field log:Lcom/nuance/connect/util/Logger$Log;

.field final messageArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/internal/ConnectHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->messageArray:Landroid/util/SparseArray;

    .line 23
    return-void
.end method

.method private mapMessages(Lcom/nuance/connect/internal/ConnectHandler;)V
    .locals 7
    .param p1, "handler"    # Lcom/nuance/connect/internal/ConnectHandler;

    .prologue
    .line 53
    invoke-interface {p1}, Lcom/nuance/connect/internal/ConnectHandler;->getMessageIDs()[I

    move-result-object v4

    if-nez v4, :cond_1

    .line 62
    :cond_0
    return-void

    .line 56
    :cond_1
    invoke-interface {p1}, Lcom/nuance/connect/internal/ConnectHandler;->getMessageIDs()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 57
    .local v3, "message":I
    iget-object v4, p0, Lcom/nuance/connect/internal/HandlerRegistry;->messageArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 58
    iget-object v4, p0, Lcom/nuance/connect/internal/HandlerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More than one handler is processing this message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 60
    :cond_2
    iget-object v4, p0, Lcom/nuance/connect/internal/HandlerRegistry;->messageArray:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/nuance/connect/internal/ConnectHandler;)Lcom/nuance/connect/internal/HandlerRegistry;
    .locals 2
    .param p1, "handler"    # Lcom/nuance/connect/internal/ConnectHandler;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nuance/connect/internal/ConnectHandler;->getHandlerName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nuance/connect/internal/ConnectHandler;->getHandlerName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/HandlerRegistry;->mapMessages(Lcom/nuance/connect/internal/ConnectHandler;)V

    .line 30
    :cond_0
    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/nuance/connect/internal/HandlerRegistry;
    .locals 2
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    return-object p0
.end method

.method public getHandlerByName(Ljava/lang/String;)Lcom/nuance/connect/internal/ConnectHandler;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/ConnectHandler;

    return-object v0
.end method

.method public getRegisteredHandlers()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/nuance/connect/util/StringUtils;->listToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasHandler(Ljava/lang/String;)Z
    .locals 1
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public postUpgrade()V
    .locals 3

    .prologue
    .line 81
    iget-object v2, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/ConnectHandler;

    .line 82
    .local v0, "handler":Lcom/nuance/connect/internal/ConnectHandler;
    invoke-interface {v0}, Lcom/nuance/connect/internal/ConnectHandler;->onPostUpgrade()V

    goto :goto_0

    .line 84
    .end local v0    # "handler":Lcom/nuance/connect/internal/ConnectHandler;
    :cond_0
    return-void
.end method

.method public tryHandleMessage(Landroid/os/Handler;Landroid/os/Message;)Z
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/nuance/connect/internal/HandlerRegistry;->messageArray:Landroid/util/SparseArray;

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/nuance/connect/internal/HandlerRegistry;->messageArray:Landroid/util/SparseArray;

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/ConnectHandler;

    .line 67
    .local v0, "h":Lcom/nuance/connect/internal/ConnectHandler;
    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/internal/ConnectHandler;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 70
    const/4 v1, 0x1

    .line 77
    .end local v0    # "h":Lcom/nuance/connect/internal/ConnectHandler;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
