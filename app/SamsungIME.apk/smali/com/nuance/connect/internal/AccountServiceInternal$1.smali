.class Lcom/nuance/connect/internal/AccountServiceInternal$1;
.super Ljava/lang/Object;
.source "AccountServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/AccountServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/AccountServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/AccountServiceInternal;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/nuance/connect/internal/AccountServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AccountServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "AccountHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    .prologue
    .line 95
    # getter for: Lcom/nuance/connect/internal/AccountServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/AccountServiceInternal;->access$100()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    new-array v1, v2, [I

    .line 96
    .local v1, "messages":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/nuance/connect/internal/AccountServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/AccountServiceInternal;->access$100()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 97
    # getter for: Lcom/nuance/connect/internal/AccountServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/AccountServiceInternal;->access$100()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v1, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal$1;->this$0:Lcom/nuance/connect/internal/AccountServiceInternal;

    # invokes: Lcom/nuance/connect/internal/AccountServiceInternal;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    invoke-static {v0, p1, p2}, Lcom/nuance/connect/internal/AccountServiceInternal;->access$000(Lcom/nuance/connect/internal/AccountServiceInternal;Landroid/os/Handler;Landroid/os/Message;)V

    .line 91
    return-void
.end method

.method public onPostUpgrade()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
