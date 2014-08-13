.class public Lcom/nuance/connect/util/StatusBarNotification;
.super Ljava/lang/Object;
.source "StatusBarNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/util/StatusBarNotification$Builder;
    }
.end annotation


# instance fields
.field private client:Lcom/nuance/connect/service/ConnectClient;

.field private final messageBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;

    .line 24
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/connect/util/StatusBarNotification;Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/service/ConnectClient;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/util/StatusBarNotification;
    .param p1, "x1"    # Lcom/nuance/connect/service/ConnectClient;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/nuance/connect/util/StatusBarNotification;->client:Lcom/nuance/connect/service/ConnectClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/connect/util/StatusBarNotification;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/util/StatusBarNotification;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/util/StatusBarNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/util/StatusBarNotification;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/nuance/connect/util/StatusBarNotification;->send()V

    return-void
.end method

.method private send()V
    .locals 3

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nuance/connect/util/StatusBarNotification;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SEND_NOTIFICATION:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/util/StatusBarNotification;->messageBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    .line 15
    return-void
.end method
