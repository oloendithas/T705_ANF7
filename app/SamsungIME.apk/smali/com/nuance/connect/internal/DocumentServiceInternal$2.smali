.class Lcom/nuance/connect/internal/DocumentServiceInternal$2;
.super Ljava/lang/Object;
.source "DocumentServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/DocumentServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/DocumentServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DocumentServiceInternal;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->this$0:Lcom/nuance/connect/internal/DocumentServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "DocumentHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    .prologue
    .line 111
    # getter for: Lcom/nuance/connect/internal/DocumentServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/DocumentServiceInternal;->access$200()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    new-array v1, v2, [I

    .line 112
    .local v1, "messages":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/nuance/connect/internal/DocumentServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/DocumentServiceInternal;->access$200()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 113
    # getter for: Lcom/nuance/connect/internal/DocumentServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/DocumentServiceInternal;->access$200()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->this$0:Lcom/nuance/connect/internal/DocumentServiceInternal;

    # invokes: Lcom/nuance/connect/internal/DocumentServiceInternal;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    invoke-static {v0, p1, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->access$100(Lcom/nuance/connect/internal/DocumentServiceInternal;Landroid/os/Handler;Landroid/os/Message;)V

    .line 107
    return-void
.end method

.method public onPostUpgrade()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
