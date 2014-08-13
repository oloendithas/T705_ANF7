.class Lcom/nuance/connect/service/ConnectClient$MessageHandler;
.super Landroid/os/Handler;
.source "ConnectClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/ConnectClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final connectRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/service/ConnectClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    const-class v0, Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/connect/service/ConnectClient$MessageHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 1
    .param p1, "connect"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 235
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient$MessageHandler;->connectRef:Ljava/lang/ref/WeakReference;

    .line 236
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 247
    sget-boolean v1, Lcom/nuance/connect/service/ConnectClient$MessageHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/nuance/connect/internal/common/InternalMessages;->values()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$MessageHandler;->connectRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    .line 249
    .local v0, "connect":Lcom/nuance/connect/service/ConnectClient;
    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {v0, p0, p1}, Lcom/nuance/connect/service/ConnectClient;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 252
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 239
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$MessageHandler;->connectRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 240
    const/4 v0, 0x0

    .local v0, "what":I
    :goto_0
    invoke-static {}, Lcom/nuance/connect/internal/common/InternalMessages;->values()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v1

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 241
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method
